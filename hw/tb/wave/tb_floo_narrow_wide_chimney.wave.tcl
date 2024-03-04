onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/clk_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/rst_ni
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/test_enable_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/sram_cfg_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_narrow_in_req_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_narrow_in_rsp_o
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_narrow_out_req_o
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_narrow_out_rsp_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_wide_in_req_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_wide_in_rsp_o
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_wide_out_req_o
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_wide_out_rsp_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/id_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_req_o
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_rsp_o
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_wide_o
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_req_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_rsp_i
add wave -noupdate -group {Chimney 0} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_wide_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_req_wormhole_arbiter/clk_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_req_wormhole_arbiter/rst_ni
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_req_wormhole_arbiter/valid_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_req_wormhole_arbiter/ready_o
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_req_wormhole_arbiter/data_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_req_wormhole_arbiter/valid_o
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_req_wormhole_arbiter/ready_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_req_wormhole_arbiter/data_o
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_rsp_wormhole_arbiter/clk_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_rsp_wormhole_arbiter/rst_ni
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_rsp_wormhole_arbiter/valid_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_rsp_wormhole_arbiter/ready_o
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_rsp_wormhole_arbiter/data_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_rsp_wormhole_arbiter/valid_o
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_rsp_wormhole_arbiter/ready_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_rsp_wormhole_arbiter/data_o
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_wormhole_arbiter/clk_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_wormhole_arbiter/rst_ni
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_wormhole_arbiter/valid_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_wormhole_arbiter/ready_o
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_wormhole_arbiter/data_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_wormhole_arbiter/valid_o
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_wormhole_arbiter/ready_i
add wave -noupdate -group {Chimney 0} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_wormhole_arbiter/data_o
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_narrow_aw
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_narrow_w
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_narrow_b
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_narrow_ar
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_narrow_r
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_wide_aw
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_wide_w
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_wide_b
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_wide_ar
add wave -noupdate -group {Chimney 0} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/floo_wide_r
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_valid_in
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_ready_out
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_narrow_unpack_aw
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_narrow_unpack_w
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_narrow_unpack_ar
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_narrow_unpack_b
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_narrow_unpack_r
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_wide_unpack_aw
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_wide_unpack_w
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_wide_unpack_ar
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_wide_unpack_b
add wave -noupdate -group {Chimney 0} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/axi_wide_unpack_r
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/clk_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rst_ni
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/sram_cfg_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/ax_valid_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/ax_ready_o
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/ax_len_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/ax_id_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/ax_dest_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/ax_valid_o
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/ax_ready_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/ax_rob_req_o
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/ax_rob_idx_o
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rsp_valid_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rsp_ready_o
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rsp_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rsp_rob_req_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rsp_rob_idx_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rsp_last_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rsp_valid_o
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rsp_ready_i
add wave -noupdate -group {Chimney 0} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_r_rob/rsp_o
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/clk_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rst_ni
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/sram_cfg_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/ax_valid_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/ax_ready_o
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/ax_len_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/ax_id_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/ax_dest_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/ax_valid_o
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/ax_ready_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/ax_rob_req_o
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/ax_rob_idx_o
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rsp_valid_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rsp_ready_o
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rsp_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rsp_rob_req_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rsp_rob_idx_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rsp_last_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rsp_valid_o
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rsp_ready_i
add wave -noupdate -group {Chimney 0} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_narrow_b_rob/rsp_o
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/clk_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rst_ni
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/sram_cfg_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/ax_valid_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/ax_ready_o
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/ax_len_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/ax_id_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/ax_dest_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/ax_valid_o
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/ax_ready_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/ax_rob_req_o
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/ax_rob_idx_o
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rsp_valid_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rsp_ready_o
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rsp_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rsp_rob_req_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rsp_rob_idx_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rsp_last_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rsp_valid_o
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rsp_ready_i
add wave -noupdate -group {Chimney 0} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_r_rob/rsp_o
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/clk_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rst_ni
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/sram_cfg_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/ax_valid_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/ax_ready_o
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/ax_len_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/ax_id_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/ax_dest_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/ax_valid_o
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/ax_ready_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/ax_rob_req_o
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/ax_rob_idx_o
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rsp_valid_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rsp_ready_o
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rsp_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rsp_rob_req_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rsp_rob_idx_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rsp_last_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rsp_valid_o
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rsp_ready_i
add wave -noupdate -group {Chimney 0} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_wide_b_rob/rsp_o
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/clk_i
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/rst_ni
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/test_enable_i
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/axi_req_i
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/axi_rsp_o
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/axi_req_o
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/axi_rsp_i
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/aw_buf_i
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/ar_buf_i
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/r_buf_o
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/b_buf_o
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/ar_no_atop_buf_full
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/aw_no_atop_buf_full
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/ar_no_atop_push
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/aw_no_atop_push
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/ar_no_atop_pop
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/aw_no_atop_pop
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/is_atop_r_rsp
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/is_atop_b_rsp
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/is_atop_aw
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/atop_has_r_rsp
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/no_atop_r_buf
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/no_atop_b_buf
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/atop_r_buf
add wave -noupdate -group {Chimney 0} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_narrow_mgr_port/i_narrow_meta_buffer/atop_b_buf
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/clk_i
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/rst_ni
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/test_enable_i
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/axi_req_i
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/axi_rsp_o
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/axi_req_o
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/axi_rsp_i
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/aw_buf_i
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/ar_buf_i
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/r_buf_o
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/b_buf_o
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/ar_no_atop_buf_full
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/aw_no_atop_buf_full
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/ar_no_atop_push
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/aw_no_atop_push
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/ar_no_atop_pop
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/aw_no_atop_pop
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/is_atop_r_rsp
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/is_atop_b_rsp
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/is_atop_aw
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/atop_has_r_rsp
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/no_atop_r_buf
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/no_atop_b_buf
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/atop_r_buf
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/atop_b_buf
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/ar_atop_reg_full
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/aw_atop_reg_full
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/ar_atop_reg_empty
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/aw_atop_reg_empty
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/ar_atop_reg_push
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/aw_atop_reg_push
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/ar_atop_reg_pop
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/aw_atop_reg_pop
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/available_atop_ids
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/no_atop_id_available
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/lzc_cnt_q
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/lzc_cnt_d
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/atop_req_id
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/atop_req_pending_q
add wave -noupdate -group {Chimney 0} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/atop_req_pending_d
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_floo_narrow_route_comp[0]/addr_i}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_floo_narrow_route_comp[0]/id_o}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_floo_narrow_route_comp[1]/addr_i}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_floo_narrow_route_comp[1]/id_o}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_floo_narrow_route_comp[2]/addr_i}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_floo_narrow_route_comp[2]/id_o}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_floo_narrow_route_comp[3]/addr_i}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_0/i_floo_narrow_route_comp[3]/id_o}
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/clk_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/rst_ni
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/test_enable_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/sram_cfg_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_narrow_in_req_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_narrow_in_rsp_o
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_narrow_out_req_o
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_narrow_out_rsp_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_wide_in_req_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_wide_in_rsp_o
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_wide_out_req_o
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_wide_out_rsp_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/id_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_req_o
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_rsp_o
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_wide_o
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_req_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_rsp_i
add wave -noupdate -group {Chimney 1} /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_wide_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_req_wormhole_arbiter/clk_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_req_wormhole_arbiter/rst_ni
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_req_wormhole_arbiter/valid_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_req_wormhole_arbiter/ready_o
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_req_wormhole_arbiter/data_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_req_wormhole_arbiter/valid_o
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_req_wormhole_arbiter/ready_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterReq /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_req_wormhole_arbiter/data_o
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_rsp_wormhole_arbiter/clk_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_rsp_wormhole_arbiter/rst_ni
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_rsp_wormhole_arbiter/valid_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_rsp_wormhole_arbiter/ready_o
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_rsp_wormhole_arbiter/data_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_rsp_wormhole_arbiter/valid_o
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_rsp_wormhole_arbiter/ready_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterRsp /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_rsp_wormhole_arbiter/data_o
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_wormhole_arbiter/clk_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_wormhole_arbiter/rst_ni
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_wormhole_arbiter/valid_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_wormhole_arbiter/ready_o
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_wormhole_arbiter/data_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_wormhole_arbiter/valid_o
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_wormhole_arbiter/ready_i
add wave -noupdate -group {Chimney 1} -group Arbiter -group ArbiterWide /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_wormhole_arbiter/data_o
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_narrow_aw
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_narrow_w
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_narrow_b
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_narrow_ar
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_narrow_r
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_wide_aw
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_wide_w
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_wide_b
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_wide_ar
add wave -noupdate -group {Chimney 1} -group Packer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/floo_wide_r
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_valid_in
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_ready_out
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_narrow_unpack_aw
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_narrow_unpack_w
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_narrow_unpack_ar
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_narrow_unpack_b
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_narrow_unpack_r
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_wide_unpack_aw
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_wide_unpack_w
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_wide_unpack_ar
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_wide_unpack_b
add wave -noupdate -group {Chimney 1} -group Unpacker /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/axi_wide_unpack_r
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/clk_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rst_ni
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/sram_cfg_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/ax_valid_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/ax_ready_o
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/ax_len_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/ax_id_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/ax_dest_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/ax_valid_o
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/ax_ready_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/ax_rob_req_o
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/ax_rob_idx_o
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rsp_valid_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rsp_ready_o
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rsp_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rsp_rob_req_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rsp_rob_idx_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rsp_last_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rsp_valid_o
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rsp_ready_i
add wave -noupdate -group {Chimney 1} -group NarrowRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_r_rob/rsp_o
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/clk_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rst_ni
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/sram_cfg_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/ax_valid_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/ax_ready_o
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/ax_len_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/ax_id_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/ax_dest_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/ax_valid_o
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/ax_ready_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/ax_rob_req_o
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/ax_rob_idx_o
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rsp_valid_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rsp_ready_o
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rsp_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rsp_rob_req_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rsp_rob_idx_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rsp_last_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rsp_valid_o
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rsp_ready_i
add wave -noupdate -group {Chimney 1} -group NarrowBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_narrow_b_rob/rsp_o
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/clk_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rst_ni
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/sram_cfg_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/ax_valid_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/ax_ready_o
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/ax_len_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/ax_id_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/ax_dest_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/ax_valid_o
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/ax_ready_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/ax_rob_req_o
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/ax_rob_idx_o
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rsp_valid_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rsp_ready_o
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rsp_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rsp_rob_req_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rsp_rob_idx_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rsp_last_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rsp_valid_o
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rsp_ready_i
add wave -noupdate -group {Chimney 1} -group WideRRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_r_rob/rsp_o
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/clk_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rst_ni
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/sram_cfg_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/ax_valid_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/ax_ready_o
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/ax_len_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/ax_id_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/ax_dest_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/ax_valid_o
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/ax_ready_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/ax_rob_req_o
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/ax_rob_idx_o
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rsp_valid_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rsp_ready_o
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rsp_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rsp_rob_req_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rsp_rob_idx_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rsp_last_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rsp_valid_o
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rsp_ready_i
add wave -noupdate -group {Chimney 1} -group WideBRoB /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_wide_b_rob/rsp_o
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/clk_i
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/rst_ni
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/test_enable_i
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/axi_req_i
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/axi_rsp_o
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/axi_req_o
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/axi_rsp_i
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/aw_buf_i
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/ar_buf_i
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/r_buf_o
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/b_buf_o
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/ar_no_atop_buf_full
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/aw_no_atop_buf_full
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/ar_no_atop_push
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/aw_no_atop_push
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/ar_no_atop_pop
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/aw_no_atop_pop
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/is_atop_r_rsp
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/is_atop_b_rsp
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/is_atop_aw
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/atop_has_r_rsp
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/no_atop_r_buf
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/no_atop_b_buf
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/atop_r_buf
add wave -noupdate -group {Chimney 1} -group NarrowMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_narrow_mgr_port/i_narrow_meta_buffer/atop_b_buf
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/clk_i
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/rst_ni
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/test_enable_i
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/axi_req_i
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/axi_rsp_o
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/axi_req_o
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/axi_rsp_i
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/aw_buf_i
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/ar_buf_i
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/r_buf_o
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/b_buf_o
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/ar_no_atop_buf_full
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/aw_no_atop_buf_full
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/ar_no_atop_push
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/aw_no_atop_push
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/ar_no_atop_pop
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/aw_no_atop_pop
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/is_atop_r_rsp
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/is_atop_b_rsp
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/is_atop_aw
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/atop_has_r_rsp
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/no_atop_r_buf
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/no_atop_b_buf
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/atop_r_buf
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/atop_b_buf
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/ar_atop_reg_full
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/aw_atop_reg_full
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/ar_atop_reg_empty
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/aw_atop_reg_empty
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/ar_atop_reg_push
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/aw_atop_reg_push
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/ar_atop_reg_pop
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/aw_atop_reg_pop
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/available_atop_ids
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/no_atop_id_available
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/lzc_cnt_q
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/lzc_cnt_d
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/atop_req_id
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/atop_req_pending_q
add wave -noupdate -group {Chimney 1} -group WideMetaBuffer /tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/gen_wide_mgr_port/i_wide_meta_buffer/gen_atop_support/atop_req_pending_d
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_floo_narrow_route_comp[0]/addr_i}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_floo_narrow_route_comp[0]/id_o}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_floo_narrow_route_comp[1]/addr_i}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_floo_narrow_route_comp[1]/id_o}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_floo_narrow_route_comp[2]/addr_i}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_floo_narrow_route_comp[2]/id_o}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_floo_narrow_route_comp[3]/addr_i}
add wave -noupdate {/tb_floo_narrow_wide_chimney/i_floo_narrow_wide_chimney_1/i_floo_narrow_route_comp[3]/id_o}
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/clk_i
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_id
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_addr
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_len
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_size
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_burst
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_lock
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_cache
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_prot
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_qos
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_region
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_atop
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_user
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_valid
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/aw_ready
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/w_data
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/w_strb
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/w_last
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/w_user
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/w_valid
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/w_ready
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/b_id
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/b_resp
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/b_user
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/b_valid
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/b_ready
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_id
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_addr
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_len
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_size
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_burst
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_lock
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_cache
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_prot
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_qos
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_region
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_user
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_valid
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/ar_ready
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/r_id
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/r_data
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/r_resp
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/r_last
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/r_user
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/r_valid
add wave -noupdate -group master /tb_floo_narrow_wide_chimney/i_wide_test_node_0/master_dv/r_ready
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/clk_i
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_id
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_addr
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_len
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_size
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_burst
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_lock
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_cache
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_prot
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_qos
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_region
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_atop
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_user
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_valid
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/aw_ready
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/w_data
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/w_strb
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/w_last
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/w_user
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/w_valid
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/w_ready
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/b_id
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/b_resp
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/b_user
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/b_valid
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/b_ready
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_id
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_addr
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_len
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_size
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_burst
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_lock
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_cache
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_prot
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_qos
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_region
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_user
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_valid
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/ar_ready
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/r_id
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/r_data
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/r_resp
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/r_last
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/r_user
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/r_valid
add wave -noupdate -group slave /tb_floo_narrow_wide_chimney/i_wide_test_node_0/slave_dv/r_ready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {47238 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 220
configure wave -valuecolwidth 110
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {91397 ps}
