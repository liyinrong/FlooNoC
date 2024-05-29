// Copyright 2024 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51
//
// Tim Fischer <fischeti@iis.ee.ethz.ch>

/// A network interface for connecting a TCDM port to the NoC.
module floo_tcdm_chimney
  import floo_pkg::*;
#(
  /// Type of the TCDM request/response interface
  parameter type tcdm_req_t = logic,
  parameter type tcdm_rsp_t = logic,
  /// Type of the NoC request/response interface
  parameter type floo_req_flit_t = logic,
  parameter type floo_rsp_flit_t = logic,
  /// Type of the ID
  parameter type id_t = logic,
  /// Routing Algorithm
  parameter route_algo_e RouteAlgo = XYRouting,
  /// Use ID table for routing
  parameter bit UseIdTable = 1'b0,
  /// Address type for the address decoder, only used if `UseIdTable` is set
  parameter type addr_t = logic,
  /// Rule type for the address decoder, only used if `UseIdTable` is set
  parameter type addr_rule_t = logic,
  /// Offset for the X coordinate in the address
  parameter int unsigned XYAddrOffsetX = 0,
  /// Offset for the Y coordinate in the address
  parameter int unsigned XYAddrOffsetY = 0,
  /// Offset for the ID in the address
  parameter int unsigned IdAddrOffset = 0,
  /// Number of rules for the address decoder
  parameter int unsigned SamNumRules = 0,
  /// Type of the route logic if `SourceRouting` is used
  parameter type route_t = logic,
  /// Number of routes for `SourceRouting`
  parameter int unsigned NumRoutes = 0
) (
  input  logic clk_i,
  input  logic rst_ni,
  /// TCDM to NoC interface
  input tcdm_req_t tcdm_req_i,
  input logic tcdm_req_valid_i,
  output logic tcdm_req_ready_o,
  output tcdm_rsp_t tcdm_rsp_o,
  output logic tcdm_rsp_valid_o,
  input logic tcdm_rsp_ready_i,
  /// NoC to TCDM interface
  output tcdm_req_t tcdm_req_o,
  output logic tcdm_req_valid_o,
  input logic tcdm_req_ready_i,
  input tcdm_rsp_t tcdm_rsp_i,
  input logic tcdm_rsp_valid_i,
  output logic tcdm_rsp_ready_o,
  /// Coordinates/ID of the current tile
  input  id_t id_i,
  /// Routing table for the current tile, only used if `SourceRouting` is used
  input  route_t [NumRoutes-1:0] route_table_i,
  /// Address map for the address decoder, only used if `UseIdTable` is set
  input  addr_rule_t [SamNumRules-1:0] addr_map_i,
  /// Output to NoC
  output floo_req_flit_t floo_req_o,
  output logic floo_req_valid_o,
  input  logic floo_req_ready_i,
  output floo_rsp_flit_t floo_rsp_o,
  output logic floo_rsp_valid_o,
  input  logic floo_rsp_ready_i,
  /// Input from NoC
  input floo_req_flit_t floo_req_i,
  input logic floo_req_valid_i,
  output logic floo_req_ready_o,
  input floo_rsp_flit_t floo_rsp_i,
  input logic floo_rsp_valid_i,
  output logic floo_rsp_ready_o
);

  /////////////////
  //   ROUTING   //
  /////////////////

  id_t dst_id_req, dst_id_rsp;
  id_t id_out;
  route_t route_out_req, route_out_rsp;

  floo_route_comp #(
    .RouteAlgo      ( RouteAlgo       ),
    .UseIdTable     ( UseIdTable      ),
    .XYAddrOffsetX  ( XYAddrOffsetX   ),
    .XYAddrOffsetY  ( XYAddrOffsetY   ),
    .IdAddrOffset   ( IdAddrOffset    ),
    .NumAddrRules   ( SamNumRules     ),
    .NumRoutes      ( NumRoutes       ),
    .id_t           ( id_t            ),
    .addr_t         ( addr_t          ),
    .addr_rule_t    ( addr_rule_t     ),
    .route_t        ( route_t         )
  ) i_floo_req_route_comp (
    .clk_i,
    .rst_ni,
    .route_table_i,
    .addr_map_i ( addr_map_i          ),
    .id_i       ( id_t'('0)           ),
    .addr_i     ( tcdm_req_i.tgt_addr ),
    .route_o    ( route_out_req       ),
    .id_o       ( id_out              )
  );
  if (RouteAlgo == SourceRouting) begin : gen_route_field
    floo_route_comp #(
      .RouteAlgo    ( RouteAlgo     ),
      .UseIdTable   ( 1'b0          ),
      .NumAddrRules ( SamNumRules   ),
      .NumRoutes    ( NumRoutes     ),
      .id_t         ( id_t          ),
      .addr_t       ( addr_t        ),
      .addr_rule_t  ( addr_rule_t   ),
      .route_t      ( route_t       )
    ) i_floo_rsp_route_comp (
      .clk_i,
      .rst_ni,
      .route_table_i,
      .addr_i     ( '0                ),
      .addr_map_i ( '0                ),
      .id_i       ( tcdm_rsp_i.src_id ),
      .route_o    ( route_out_rsp     ),
      .id_o       (                   )
    );
    assign dst_id_req = route_out_req;
    assign dst_id_rsp = route_out_rsp;
  end else begin : gen_dst_field
    assign dst_id_req = id_out;
    assign dst_id_rsp = tcdm_rsp_i.src_id;
  end

  //////////////////////
  //   FLIT PACKING   //
  //////////////////////

  // TCDM request to NoC request
  assign floo_req_o.hdr.dst_id = dst_id_req;
  assign floo_req_o.hdr.src_id = id_i;
  assign floo_req_o.hdr.last = 1'b1;
  assign floo_req_o.payload = tcdm_req_i; // TODO: This could be improved, target address is not part of the payload
  assign floo_req_valid_o = tcdm_req_valid_i;
  assign tcdm_req_ready_o = floo_req_ready_i;

  // NoC response to TCDM response
  assign tcdm_rsp_o = floo_rsp_i.payload;
  assign tcdm_rsp_valid_o = floo_rsp_valid_i;
  assign floo_rsp_ready_o = tcdm_rsp_ready_i;

  // NoC request to TCDM request
  assign tcdm_req_o = floo_req_i.payload;
  assign tcdm_req_valid_o = floo_req_valid_i;
  assign floo_req_ready_o = tcdm_req_ready_i;

  // TCDM response to NoC response
  assign floo_rsp_o.hdr.dst_id = dst_id_rsp;
  assign floo_rsp_o.hdr.src_id = id_i;
  assign floo_rsp_o.hdr.last = 1'b1;
  assign floo_rsp_o.payload = tcdm_rsp_i;
  assign floo_rsp_valid_o = tcdm_rsp_valid_i;
  assign tcdm_rsp_ready_o = floo_rsp_ready_i;

endmodule
