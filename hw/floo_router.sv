// Copyright 2022 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51
//
// Michael Rogenmoser <michaero@iis.ee.ethz.ch>

`include "common_cells/registers.svh"
`include "common_cells/assertions.svh"

/// A simple router with configurable number of ports, physical and virtual channels, and input/output buffers
module floo_router import floo_pkg::*; #(
  parameter int unsigned NumRoutes        = 0,
  parameter int unsigned NumVirtChannels  = 0,
  parameter int unsigned NumPhysChannels  = 1,
  parameter type         flit_t           = logic,
  parameter int unsigned ChannelFifoDepth = 0,
  parameter int unsigned OutputFifoDepth  = 0,
  parameter route_algo_e RouteAlgo        = IdTable,
  /// Used for ID-based and XY routing
  parameter int unsigned IdWidth          = 0,
  parameter type         id_t             = logic[IdWidth-1:0],
  /// Used for ID-based routing
  parameter int unsigned NumAddrRules     = 0,
  // parameter bit          McastFlag        = 1'b0,
  parameter type         addr_rule_t      = logic,
  /// Configuration parameters for special network topologies
  parameter int unsigned NumInput         = NumRoutes,
  parameter int unsigned NumOutput        = NumRoutes,
  parameter bit          XYRouteOpt       = 1'b1,
  parameter bit          NoLoopback       = 1'b1
) (
  input  logic                                       clk_i,
  input  logic                                       rst_ni,
  input  logic                                       test_enable_i,

  input  id_t                                        xy_id_i,        // if unused assign to '0
  input  addr_rule_t [NumAddrRules-1:0]              id_route_map_i, // if unused assign to '0

  input  logic  [NumInput-1:0][NumVirtChannels-1:0]  valid_i, // NOT AXI, requires ready first
  output logic  [NumInput-1:0][NumVirtChannels-1:0]  ready_o, // NOT AXI, requires ready first
  input  flit_t [NumInput-1:0][NumPhysChannels-1:0]  data_i,

  output logic  [NumOutput-1:0][NumVirtChannels-1:0] valid_o, // NOT AXI, requires ready first
  input  logic  [NumOutput-1:0][NumVirtChannels-1:0] ready_i, // NOT AXI, requires ready first
  output flit_t [NumOutput-1:0][NumPhysChannels-1:0] data_o
);

  // TODO MICHAERO: assert NumPhysChannels <= NumVirtChannels

  flit_t [NumInput-1:0][NumVirtChannels-1:0] in_data, in_routed_data;
  logic  [NumInput-1:0][NumVirtChannels-1:0] in_valid, in_ready;

  logic  [NumInput-1:0][NumVirtChannels-1:0][NumOutput-1:0] route_mask, route_mask_q;
  
  // Router input part
  for (genvar in_route = 0; in_route < NumInput; in_route++) begin : gen_input
    for (genvar v_chan = 0; v_chan < NumVirtChannels; v_chan++) begin : gen_virt_input
      logic [cf_math_pkg::idx_width(NumPhysChannels)-1:0] in_phys_channel;
      if (NumPhysChannels == 1) begin : gen_single_phys
        assign in_phys_channel = '0;
      end else if (NumPhysChannels == NumVirtChannels) begin : gen_virt_eq_phys
        assign in_phys_channel = v_chan;
      end else begin : gen_odd_phys
        $fatal(1, "unimplemented");
      end

      (* ungroup *)
      stream_fifo_optimal_wrap #(
        .Depth  ( ChannelFifoDepth ),
        .type_t ( flit_t           )
      ) i_stream_fifo (
        .clk_i      ( clk_i         ),
        .rst_ni     ( rst_ni        ),
        .testmode_i ( test_enable_i ),
        .flush_i    ( 1'b0   ),
        .usage_o    (  ),
        .data_i     ( data_i  [in_route][in_phys_channel] ),
        .valid_i    ( valid_i [in_route][v_chan]          ),
        .ready_o    ( ready_o [in_route][v_chan]          ),
        .data_o     ( in_data [in_route][v_chan]          ),
        .valid_o    ( in_valid[in_route][v_chan]          ),
        .ready_i    ( in_ready[in_route][v_chan]          )
      );

      floo_route_select #(
        .NumRoutes    ( NumOutput    ),
        .flit_t       ( flit_t       ),
        .RouteAlgo    ( RouteAlgo    ),
        .IdWidth      ( IdWidth      ),
        .id_t         ( id_t         ),
        .NumAddrRules ( NumAddrRules ),
        .addr_rule_t  ( addr_rule_t  )
      ) i_route_select (
        .clk_i,
        .rst_ni,
        .test_enable_i,

        .xy_id_i        ( xy_id_i                          ),
        .id_route_map_i ( id_route_map_i                   ),
        .channel_i      ( in_data       [in_route][v_chan] ),
        .valid_i        ( in_valid      [in_route][v_chan] ),
        .ready_i        ( in_ready      [in_route][v_chan] ),
        .channel_o      ( in_routed_data[in_route][v_chan] ),
        .route_sel_o    ( route_mask    [in_route][v_chan] )
        // .routes_onehot_o( routes_onehot[in_route][v_chan][NumDst-1:0] )
      );

    end
  end

  localparam int unsigned NumInputLimited = NoLoopback ? NumInput-1 : NumInput;

  logic  [NumInput-1:0][NumVirtChannels-1:0] mcast_flag, all_hs_complete;
  logic [NumOutput-1:0][NumVirtChannels-1:0][NumInputLimited-1:0] masked_valid, masked_ready;
  logic [NumInput-1:0][NumVirtChannels-1:0][NumOutput-1:0] masked_all_ready, masked_all_ready_q, masked_valid_mcast, all_mcast_flag_q;
  flit_t [NumOutput-1:0][NumVirtChannels-1:0][NumInputLimited-1:0] masked_data;

  // TODO MICHAERO: reduce connections if (RouteAlgo == XYRouting)
  for (genvar in_route = 0; in_route < NumInput; in_route++) begin : gen_hs_input
    for (genvar v_chan = 0; v_chan < NumVirtChannels; v_chan++) begin : gen_hs_virt
      for (genvar out_route = 0; out_route < NumOutput; out_route++) begin : gen_hs_output
        localparam int unsigned ModInRoute =
          in_route < out_route && NoLoopback ? in_route : in_route-1;
        if (in_route == out_route && NoLoopback) begin : gen_inout_identical
          assign masked_all_ready[in_route][v_chan][out_route] = '0;
          // TODO MICHAERO: assert no loopback routing!!!
        end else if ((RouteAlgo == XYRouting) && XYRouteOpt &&
                    (in_route == South || in_route == North) &&
                    (out_route == East || out_route == West)) begin : gen_xy_opt
          assign masked_all_ready[in_route][v_chan][out_route] = '0;
          assign masked_valid[out_route][v_chan][ModInRoute] = '0;
          assign masked_data[out_route][v_chan][ModInRoute] = '0;
        end else begin : gen_default
          assign masked_all_ready[in_route][v_chan][out_route] = 
            masked_ready[out_route][v_chan][ModInRoute];
          assign masked_valid[out_route][v_chan][ModInRoute] = mcast_flag[in_route][v_chan] ?
            masked_valid_mcast[in_route][v_chan][out_route] :
            in_valid[in_route][v_chan] & route_mask[in_route][v_chan][out_route];//mcast
          assign masked_data[out_route][v_chan][ModInRoute] =
            in_routed_data[in_route][v_chan]; // This is already flit replication
        end
      end
      assign in_ready[in_route][v_chan] = mcast_flag[in_route][v_chan] ?
        all_hs_complete[in_route][v_chan] :
        |(masked_all_ready[in_route][v_chan] & route_mask[in_route][v_chan]);
    end
  end

  typedef enum logic [1:0] {
    Idle = 2'b00,
    ValidInput = 2'b01,
    PartialHS = 2'b10
    // CompleteHS = 2'b11
  } fsm_e;

  logic  [NumInput-1:0][NumVirtChannels-1:0][NumOutput-1:0] hs_flag_d, hs_flag_q; //handshake flags.
  logic  [NumInput-1:0][NumVirtChannels-1:0] ready_monitor;
  fsm_e  [NumInput-1:0][NumVirtChannels-1:0] hs_state_d, hs_state_q;
  `FF(hs_state_q, hs_state_d, '0)
  `FF(hs_flag_q, hs_flag_d, '0)
  `FF(masked_all_ready_q, masked_all_ready, '0)

  // Multicast Handshake FSM Logic
  for (genvar in_route = 0; in_route < NumInput; in_route++) begin : gen_hs_input_mcast
    for (genvar v_chan = 0; v_chan < NumVirtChannels; v_chan++) begin : gen_hs_virt_mcast
      // for (genvar out_route = 0; out_route < NumOutput; out_route++) begin
      //   localparam int unsigned ModInRoute =
      //     in_route < out_route && NoLoopback ? in_route : in_route-1;
      //   assign all_mcast_flag[out_route][v_chan][ModInRoute] = in_data[in_route][v_chan].hdr.mcast_flag;
      // end
      assign mcast_flag[in_route][v_chan] = in_data[in_route][v_chan].hdr.mcast_flag;
      assign all_hs_complete[in_route][v_chan] = &(hs_flag_d[in_route][v_chan] | ~route_mask_q[in_route][v_chan]);
      assign ready_monitor[in_route][v_chan] = |(masked_all_ready[in_route][v_chan] & route_mask[in_route][v_chan]);
      
      always_comb begin // Now we consume in_valid keeps asserted until it finishes the handshake and then waits for the next data.
        if (hs_state_q[in_route][v_chan] == Idle) begin
          hs_flag_d[in_route][v_chan] = '0;
          masked_valid_mcast[in_route][v_chan] = '0;
          if (~|(all_mcast_flag_q[in_route][v_chan] & route_mask_q[in_route][v_chan])) begin
            hs_state_d[in_route][v_chan] = Idle;
          end else if (in_valid[in_route][v_chan] && ~ready_monitor[in_route][v_chan]) begin
            hs_state_d[in_route][v_chan] = ValidInput;
          end else if (in_valid[in_route][v_chan] && ready_monitor[in_route][v_chan]) begin
            hs_state_d[in_route][v_chan] = PartialHS;
          end else begin
            hs_state_d[in_route][v_chan] = Idle;
          end
        end else if (hs_state_q[in_route][v_chan] == ValidInput) begin
          hs_flag_d[in_route][v_chan] = '0;
          masked_valid_mcast[in_route][v_chan] = '1 & route_mask[in_route][v_chan]; //route_mask_q? Now route_mask and mcast_flag change at the same cycle (with in_data), while the last packet has not been transmitted.
          if (~|(all_mcast_flag_q[in_route][v_chan] & route_mask_q[in_route][v_chan])) begin
            hs_state_d[in_route][v_chan] = Idle;
          end else if (in_valid[in_route][v_chan] && ready_monitor[in_route][v_chan]) begin
            hs_state_d[in_route][v_chan] = PartialHS;
          end else if (in_valid[in_route][v_chan] && ~ready_monitor[in_route][v_chan]) begin
            hs_state_d[in_route][v_chan] = ValidInput;
          end else begin
            hs_state_d[in_route][v_chan] = Idle;
          end
        end else if (hs_state_q[in_route][v_chan] == PartialHS) begin
          hs_flag_d[in_route][v_chan] = masked_all_ready_q[in_route][v_chan] | hs_flag_q[in_route][v_chan];
          masked_valid_mcast[in_route][v_chan] = ~hs_flag_d[in_route][v_chan] & route_mask_q[in_route][v_chan];
          if (~|(all_mcast_flag_q[in_route][v_chan] & route_mask_q[in_route][v_chan])) begin
            hs_state_d[in_route][v_chan] = Idle;
          end else if (in_valid[in_route][v_chan] && all_hs_complete[in_route][v_chan]) begin
            hs_state_d[in_route][v_chan] = ValidInput;
          end else if (in_valid[in_route][v_chan] && ~all_hs_complete[in_route][v_chan]) begin
            hs_state_d[in_route][v_chan] = PartialHS;
          end else begin
            hs_state_d[in_route][v_chan] = Idle;
          end
        end
      end
    end
  end  

  flit_t [NumOutput-1:0][NumVirtChannels-1:0] out_data, out_buffered_data; 
  logic  [NumOutput-1:0][NumVirtChannels-1:0] out_valid, out_ready;
  logic  [NumOutput-1:0][NumVirtChannels-1:0] out_buffered_valid, out_buffered_ready;
  logic  [NumOutput-1:0][NumVirtChannels-1:0] out_initial_d, out_initial_q;
  `FF(out_initial_q, out_initial_d, '0)
  // logic  [NumOutput-1:0] unicast_end;

  for (genvar out_route = 0; out_route < NumOutput; out_route++) begin
    for (genvar v_chan = 0; v_chan < NumVirtChannels; v_chan++) begin
      // assign out_last[out_route][v_chan] = out_buffered_data[out_route][v_chan].hdr.last;
      // `FFL(out_initial[out_route][v_chan], 1'b1, out_buffered_valid[out_route][v_chan], 1'b0)
      always_comb begin
        // out_initial_d[out_route][v_chan] = 1'b0;
        if (~out_initial_q[out_route][v_chan]) begin
          if (out_valid[out_route][v_chan]) begin
            out_initial_d[out_route][v_chan] = 1'b1;
          end else begin
            out_initial_d[out_route][v_chan] = 1'b0;
          end
        end else begin
          if (out_data[out_route][v_chan].hdr.last) begin
            out_initial_d[out_route][v_chan] = 1'b0;
          end else begin
            out_initial_d[out_route][v_chan] = 1'b1;
          end
        end
      end
    end
  end

  for (genvar in_route = 0; in_route < NumInput; in_route++) begin
    for (genvar v_chan = 0; v_chan < NumVirtChannels; v_chan++) begin
      for (genvar out_route = 0; out_route < NumOutput; out_route++) begin
        // `FFL(all_mcast_flag_q[in_route][v_chan][out_route], mcast_flag[in_route][v_chan], (out_initial_q[out_route][v_chan] && 
        //   out_buffered_ready[out_route][v_chan] && out_buffered_valid[out_route][v_chan] && out_buffered_data[out_route][v_chan].hdr.last) || 
        //   (~out_initial[out_route][v_chan] && out_buffered_valid[out_route][v_chan]), 1'b0)
        // `FFL(route_mask_q[in_route][v_chan][out_route], route_mask[in_route][v_chan][out_route], (out_initial_q[out_route][v_chan] && 
        //   out_buffered_ready[out_route][v_chan] && out_buffered_valid[out_route][v_chan] && out_buffered_data[out_route][v_chan].hdr.last) || 
        //   (~out_initial[out_route][v_chan] && out_buffered_valid[out_route][v_chan]), 1'b0)
        `FFL(all_mcast_flag_q[in_route][v_chan][out_route], mcast_flag[in_route][v_chan],  
          ~out_initial_q[out_route][v_chan] && out_valid[out_route][v_chan], 1'b0)
        `FFL(route_mask_q[in_route][v_chan][out_route], route_mask[in_route][v_chan][out_route], 
          ~out_initial_q[out_route][v_chan] && out_valid[out_route][v_chan], 1'b0)
      end
    end
  end  

  for (genvar out_route = 0; out_route < NumOutput; out_route++) begin : gen_output

    // arbitrate input fifos per virtual channel
    for (genvar v_chan = 0; v_chan < NumVirtChannels; v_chan++) begin : gen_virt_output
      
      // int NumDst = $countones(masked_data[out_route][v_chan].hdr.dst_mask_id);
      // for (genvar d = 0; d < NumDst; d++) begin : flit_replication
      floo_wormhole_arbiter #(
        .NumRoutes  ( NumInputLimited ),
        .flit_t     ( flit_t          )
      ) i_wormhole_arbiter (
        .clk_i,
        .rst_ni,

        .valid_i ( masked_valid[out_route][v_chan] ),
        .ready_o ( masked_ready[out_route][v_chan] ),
        .data_i  ( masked_data [out_route][v_chan] ),
        .valid_o ( out_valid[out_route][v_chan] ),
        .ready_i ( out_ready[out_route][v_chan] ),
        .data_o  ( out_data [out_route][v_chan] )
      ); 

      if (OutputFifoDepth > 0) begin : gen_out_fifo
        (* ungroup *)
        stream_fifo_optimal_wrap #(
          .Depth  ( OutputFifoDepth ),
          .type_t ( flit_t           )
        ) i_stream_fifo (
          .clk_i      ( clk_i         ),
          .rst_ni     ( rst_ni        ),
          .testmode_i ( test_enable_i ),
          .flush_i    ( 1'b0   ),
          .usage_o    (  ),
          .data_i     ( out_data          [out_route][v_chan] ),
          .valid_i    ( out_valid         [out_route][v_chan] ),
          .ready_o    ( out_ready         [out_route][v_chan] ),
          .data_o     ( out_buffered_data [out_route][v_chan] ),
          .valid_o    ( out_buffered_valid[out_route][v_chan] ),
          .ready_i    ( out_buffered_ready[out_route][v_chan] )
        );
      end else begin : gen_no_out_fifo
        assign out_buffered_data [out_route][v_chan] = out_data          [out_route][v_chan];
        assign out_buffered_valid[out_route][v_chan] = out_valid         [out_route][v_chan];
        assign out_ready         [out_route][v_chan] = out_buffered_ready[out_route][v_chan];
      end
      // end
    end

    // Arbitrate virtual channels onto the physical channel
    floo_vc_arbiter #(
      .NumVirtChannels ( NumVirtChannels ),
      .flit_t          ( flit_t          ),
      .NumPhysChannels ( NumPhysChannels )
    ) i_vc_arbiter (
      .clk_i,
      .rst_ni,

      .valid_i ( out_buffered_valid[out_route][NumVirtChannels-1:0] ),
      .ready_o ( out_buffered_ready[out_route][NumVirtChannels-1:0] ),
      .data_i  ( out_buffered_data [out_route][NumVirtChannels-1:0] ),

      .ready_i ( ready_i  [out_route][NumVirtChannels-1:0] ),
      .valid_o ( valid_o  [out_route] ),
      .data_o  ( data_o   [out_route] )
    );      
  end

  for (genvar i = 0; i < NumInput; i++) begin : gen_input_assert
    for (genvar v = 0; v < NumVirtChannels; v++) begin : gen_virt_assert
      // Assert that the input data is stable when valid is asserted
      // `ASSERT(StableDataIn, valid_i[i][v] && !ready_o[i][v] |=> $stable(data_i[i][v]))
      // Assert that valid is stable when ready is not asserted
      `ASSERT(StableValidIn, valid_i[i][v] && !ready_o[i][v] |=> $stable(valid_i[i][v]))
    end
  end

  for (genvar o = 0; o < NumOutput; o++) begin : gen_output_assert
    for (genvar v = 0; v < NumVirtChannels; v++) begin : gen_virt_assert
      // Assert that the input data is stable when valid is asserted
      // `ASSERT(StableDataOut, valid_o[o][v] && !ready_i[o][v] |=> $stable(data_o[o][v]))
      // Assert that valid is stable when ready is not asserted
      `ASSERT(StableValidOut, valid_o[o][v] && !ready_i[o][v] |=> $stable(valid_o[o][v]))
    end
  end

  // If XYRouting optimization is enabled, assert that not Y->X routing occurs
  // if ((RouteAlgo == XYRouting) && XYRouteOpt) begin : gen_xy_opt_assert
  //   for (genvar v = 0; v < NumVirtChannels; v++) begin : gen_virt
  //     `ASSERT(XYDirectionNotAllowed,
  //         !(in_valid[South][v] && route_mask[South][v][East]) &&
  //         !(in_valid[South][v] && route_mask[South][v][West]) &&
  //         !(in_valid[North][v] && route_mask[North][v][East]) &&
  //         !(in_valid[North][v] && route_mask[North][v][West]))
  //   end
  // end

endmodule
