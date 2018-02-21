// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.4
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_snn_izikevich_axis_cp_inputs_to_mem (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_input_address0,
        p_input_ce0,
        p_input_q0,
        p_mem_V_address0,
        p_mem_V_ce0,
        p_mem_V_we0,
        p_mem_V_d0
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 4'b1;
parameter    ap_ST_pp0_stg0_fsm_1 = 4'b10;
parameter    ap_ST_pp0_stg1_fsm_2 = 4'b100;
parameter    ap_ST_st5_fsm_3 = 4'b1000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv8_C0 = 8'b11000000;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv6_20 = 6'b100000;
parameter    ap_const_lv5_0 = 5'b00000;
parameter    ap_const_lv8_AA = 8'b10101010;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] p_input_address0;
output   p_input_ce0;
input  [31:0] p_input_q0;
output  [7:0] p_mem_V_address0;
output   p_mem_V_ce0;
output   p_mem_V_we0;
output  [0:0] p_mem_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg p_input_ce0;
reg p_mem_V_ce0;
reg p_mem_V_we0;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm = 4'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_22;
reg   [7:0] indvar_flatten_reg_82;
reg   [2:0] stream_id_reg_93;
reg   [31:0] p_026_1_reg_104;
reg   [5:0] bvh_d_index_reg_116;
wire   [0:0] exitcond_flatten_fu_127_p2;
reg   [0:0] exitcond_flatten_reg_227;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_1;
reg    ap_sig_bdd_54;
reg    ap_reg_ppiten_pp0_it0 = 1'b0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [7:0] indvar_flatten_next_fu_133_p2;
reg   [7:0] indvar_flatten_next_reg_231;
wire   [5:0] index_assign_mid2_fu_151_p3;
reg   [5:0] index_assign_mid2_reg_236;
wire   [2:0] stream_id_mid2_fu_159_p3;
reg   [2:0] stream_id_mid2_reg_244;
wire   [7:0] x_fu_185_p2;
reg   [7:0] x_reg_255;
reg    ap_sig_cseq_ST_pp0_stg1_fsm_2;
reg    ap_sig_bdd_80;
wire   [31:0] p_Val2_s_fu_196_p3;
reg   [31:0] p_Val2_s_reg_260;
wire   [0:0] tmp_43_fu_204_p2;
reg   [0:0] tmp_43_reg_265;
wire   [0:0] tmp_653_fu_210_p3;
reg   [0:0] tmp_653_reg_269;
wire   [5:0] b_fu_218_p2;
reg   [5:0] b_reg_274;
reg   [7:0] indvar_flatten_phi_fu_86_p4;
reg   [2:0] stream_id_phi_fu_97_p4;
reg   [5:0] bvh_d_index_phi_fu_120_p4;
wire   [63:0] tmp_s_fu_167_p1;
wire   [63:0] tmp_44_fu_223_p1;
wire   [0:0] exitcond_fu_145_p2;
wire   [2:0] stream_id_1_fu_139_p2;
wire   [7:0] tmp_fu_172_p3;
wire   [7:0] index_assign_cast3_fu_179_p1;
wire   [0:0] tmp_42_fu_191_p2;
wire   [31:0] index_assign_cast2_fu_182_p1;
reg    ap_sig_cseq_ST_st5_fsm_3;
reg    ap_sig_bdd_190;
reg   [3:0] ap_NS_fsm;




always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & ~(exitcond_flatten_fu_127_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

always @ (posedge ap_clk) begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0)) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & ~(exitcond_flatten_reg_227 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
        bvh_d_index_reg_116 <= b_reg_274;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        bvh_d_index_reg_116 <= ap_const_lv6_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
        indvar_flatten_reg_82 <= indvar_flatten_next_reg_231;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        indvar_flatten_reg_82 <= ap_const_lv8_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
        p_026_1_reg_104 <= p_Val2_s_reg_260;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        p_026_1_reg_104 <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
        stream_id_reg_93 <= stream_id_mid2_reg_244;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        stream_id_reg_93 <= ap_const_lv3_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
        b_reg_274 <= b_fu_218_p2;
        p_Val2_s_reg_260 <= p_Val2_s_fu_196_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1)) begin
        exitcond_flatten_reg_227 <= exitcond_flatten_fu_127_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (exitcond_flatten_fu_127_p2 == ap_const_lv1_0))) begin
        index_assign_mid2_reg_236 <= index_assign_mid2_fu_151_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        indvar_flatten_next_reg_231 <= indvar_flatten_next_fu_133_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (exitcond_flatten_fu_127_p2 == ap_const_lv1_0))) begin
        stream_id_mid2_reg_244 <= stream_id_mid2_fu_159_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
        tmp_43_reg_265 <= tmp_43_fu_204_p2;
        x_reg_255 <= x_fu_185_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg1_fsm_2) & (exitcond_flatten_reg_227 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_43_fu_204_p2))) begin
        tmp_653_reg_269 <= tmp_653_fu_210_p3;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_cseq_ST_st5_fsm_3) begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0)) | (ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_3))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_st5_fsm_3) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st5_fsm_3)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_54) begin
    if (ap_sig_bdd_54) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_1 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_80) begin
    if (ap_sig_bdd_80) begin
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg1_fsm_2 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_22) begin
    if (ap_sig_bdd_22) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

always @ (ap_sig_bdd_190) begin
    if (ap_sig_bdd_190) begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_3 = ap_const_logic_0;
    end
end

always @ (bvh_d_index_reg_116 or exitcond_flatten_reg_227 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it1 or b_reg_274) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
        bvh_d_index_phi_fu_120_p4 = b_reg_274;
    end else begin
        bvh_d_index_phi_fu_120_p4 = bvh_d_index_reg_116;
    end
end

always @ (indvar_flatten_reg_82 or exitcond_flatten_reg_227 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it1 or indvar_flatten_next_reg_231) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
        indvar_flatten_phi_fu_86_p4 = indvar_flatten_next_reg_231;
    end else begin
        indvar_flatten_phi_fu_86_p4 = indvar_flatten_reg_82;
    end
end

always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it0) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0))) begin
        p_input_ce0 = ap_const_logic_1;
    end else begin
        p_input_ce0 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it1) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) begin
        p_mem_V_ce0 = ap_const_logic_1;
    end else begin
        p_mem_V_ce0 = ap_const_logic_0;
    end
end

always @ (ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it1 or tmp_43_reg_265) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_const_lv1_0 == tmp_43_reg_265))) begin
        p_mem_V_we0 = ap_const_logic_1;
    end else begin
        p_mem_V_we0 = ap_const_logic_0;
    end
end

always @ (stream_id_reg_93 or exitcond_flatten_reg_227 or ap_sig_cseq_ST_pp0_stg0_fsm_1 or ap_reg_ppiten_pp0_it1 or stream_id_mid2_reg_244) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_1) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_flatten_reg_227 == ap_const_lv1_0))) begin
        stream_id_phi_fu_97_p4 = stream_id_mid2_reg_244;
    end else begin
        stream_id_phi_fu_97_p4 = stream_id_reg_93;
    end
end
always @ (ap_start or ap_CS_fsm or exitcond_flatten_fu_127_p2 or ap_reg_ppiten_pp0_it0) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_pp0_stg0_fsm_1 : 
        begin
            if (~((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(exitcond_flatten_fu_127_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_3;
            end
        end
        ap_ST_pp0_stg1_fsm_2 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_1;
        end
        ap_ST_st5_fsm_3 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end



always @ (ap_CS_fsm) begin
    ap_sig_bdd_190 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_3]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_22 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_54 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end


always @ (ap_CS_fsm) begin
    ap_sig_bdd_80 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end

assign b_fu_218_p2 = (index_assign_mid2_reg_236 + ap_const_lv6_1);

assign exitcond_flatten_fu_127_p2 = (indvar_flatten_phi_fu_86_p4 == ap_const_lv8_C0? 1'b1: 1'b0);

assign exitcond_fu_145_p2 = (bvh_d_index_phi_fu_120_p4 == ap_const_lv6_20? 1'b1: 1'b0);

assign index_assign_cast2_fu_182_p1 = index_assign_mid2_reg_236;

assign index_assign_cast3_fu_179_p1 = index_assign_mid2_reg_236;

assign index_assign_mid2_fu_151_p3 = ((exitcond_fu_145_p2[0:0] === 1'b1) ? ap_const_lv6_0 : bvh_d_index_phi_fu_120_p4);

assign indvar_flatten_next_fu_133_p2 = (indvar_flatten_phi_fu_86_p4 + ap_const_lv8_1);

assign p_Val2_s_fu_196_p3 = ((tmp_42_fu_191_p2[0:0] === 1'b1) ? p_input_q0 : p_026_1_reg_104);

assign p_input_address0 = tmp_s_fu_167_p1;

assign p_mem_V_address0 = tmp_44_fu_223_p1;

assign p_mem_V_d0 = tmp_653_reg_269;

assign stream_id_1_fu_139_p2 = (stream_id_phi_fu_97_p4 + ap_const_lv3_1);

assign stream_id_mid2_fu_159_p3 = ((exitcond_fu_145_p2[0:0] === 1'b1) ? stream_id_1_fu_139_p2 : stream_id_phi_fu_97_p4);

assign tmp_42_fu_191_p2 = (index_assign_mid2_reg_236 == ap_const_lv6_0? 1'b1: 1'b0);

assign tmp_43_fu_204_p2 = (x_fu_185_p2 < ap_const_lv8_AA? 1'b1: 1'b0);

assign tmp_44_fu_223_p1 = x_reg_255;

assign tmp_653_fu_210_p3 = p_Val2_s_fu_196_p3[index_assign_cast2_fu_182_p1];

assign tmp_fu_172_p3 = {{stream_id_mid2_reg_244}, {ap_const_lv5_0}};

assign tmp_s_fu_167_p1 = stream_id_mid2_fu_159_p3;

assign x_fu_185_p2 = (tmp_fu_172_p3 + index_assign_cast3_fu_179_p1);


endmodule //hls_snn_izikevich_axis_cp_inputs_to_mem
