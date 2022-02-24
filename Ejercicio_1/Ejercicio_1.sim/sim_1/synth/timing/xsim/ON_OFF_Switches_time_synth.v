// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Feb 22 19:22:45 2022
// Host        : DESKTOP-9NO9QBS running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/veron/Desktop/TEC/2022/ISemestre/TallerDigitales/Lab1/codigo/Taller-Digitales-LAB1/Ejercicio_1/Ejercicio_1.sim/sim_1/synth/timing/xsim/ON_OFF_Switches_time_synth.v
// Design      : ON_OFF_Switches
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module ON_OFF_Switches
   (clk,
    btnU,
    btnR,
    btnD,
    btnL,
    swtch,
    led);
  input clk;
  input btnU;
  input btnR;
  input btnD;
  input btnL;
  input [15:0]swtch;
  output [15:0]led;

  wire btnD;
  wire btnD_IBUF;
  wire btnL;
  wire btnL_IBUF;
  wire btnR;
  wire btnR_IBUF;
  wire btnU;
  wire btnU_IBUF;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire [15:0]swtch;
  wire [15:0]swtch_IBUF;

initial begin
 $sdf_annotate("ON_OFF_Switches_time_synth.sdf",,,,"tool_control");
end
  IBUF btnD_IBUF_inst
       (.I(btnD),
        .O(btnD_IBUF));
  IBUF btnL_IBUF_inst
       (.I(btnL),
        .O(btnL_IBUF));
  IBUF btnR_IBUF_inst
       (.I(btnR),
        .O(btnR_IBUF));
  IBUF btnU_IBUF_inst
       (.I(btnU),
        .O(btnU_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(swtch_IBUF[0]),
        .I1(btnL_IBUF),
        .O(led_OBUF[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[10]_inst_i_1 
       (.I0(swtch_IBUF[10]),
        .I1(btnR_IBUF),
        .O(led_OBUF[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[11]_inst_i_1 
       (.I0(swtch_IBUF[11]),
        .I1(btnR_IBUF),
        .O(led_OBUF[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[12]_inst_i_1 
       (.I0(swtch_IBUF[12]),
        .I1(btnU_IBUF),
        .O(led_OBUF[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[13]_inst_i_1 
       (.I0(swtch_IBUF[13]),
        .I1(btnU_IBUF),
        .O(led_OBUF[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[14]_inst_i_1 
       (.I0(swtch_IBUF[14]),
        .I1(btnU_IBUF),
        .O(led_OBUF[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[15]_inst_i_1 
       (.I0(swtch_IBUF[15]),
        .I1(btnU_IBUF),
        .O(led_OBUF[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(swtch_IBUF[1]),
        .I1(btnL_IBUF),
        .O(led_OBUF[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[2]_inst_i_1 
       (.I0(swtch_IBUF[2]),
        .I1(btnL_IBUF),
        .O(led_OBUF[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[3]_inst_i_1 
       (.I0(swtch_IBUF[3]),
        .I1(btnL_IBUF),
        .O(led_OBUF[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[4]_inst_i_1 
       (.I0(swtch_IBUF[4]),
        .I1(btnD_IBUF),
        .O(led_OBUF[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[5]_inst_i_1 
       (.I0(swtch_IBUF[5]),
        .I1(btnD_IBUF),
        .O(led_OBUF[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[6]_inst_i_1 
       (.I0(swtch_IBUF[6]),
        .I1(btnD_IBUF),
        .O(led_OBUF[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[7]_inst_i_1 
       (.I0(swtch_IBUF[7]),
        .I1(btnD_IBUF),
        .O(led_OBUF[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[8]_inst_i_1 
       (.I0(swtch_IBUF[8]),
        .I1(btnR_IBUF),
        .O(led_OBUF[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led_OBUF[9]_inst_i_1 
       (.I0(swtch_IBUF[9]),
        .I1(btnR_IBUF),
        .O(led_OBUF[9]));
  IBUF \swtch_IBUF[0]_inst 
       (.I(swtch[0]),
        .O(swtch_IBUF[0]));
  IBUF \swtch_IBUF[10]_inst 
       (.I(swtch[10]),
        .O(swtch_IBUF[10]));
  IBUF \swtch_IBUF[11]_inst 
       (.I(swtch[11]),
        .O(swtch_IBUF[11]));
  IBUF \swtch_IBUF[12]_inst 
       (.I(swtch[12]),
        .O(swtch_IBUF[12]));
  IBUF \swtch_IBUF[13]_inst 
       (.I(swtch[13]),
        .O(swtch_IBUF[13]));
  IBUF \swtch_IBUF[14]_inst 
       (.I(swtch[14]),
        .O(swtch_IBUF[14]));
  IBUF \swtch_IBUF[15]_inst 
       (.I(swtch[15]),
        .O(swtch_IBUF[15]));
  IBUF \swtch_IBUF[1]_inst 
       (.I(swtch[1]),
        .O(swtch_IBUF[1]));
  IBUF \swtch_IBUF[2]_inst 
       (.I(swtch[2]),
        .O(swtch_IBUF[2]));
  IBUF \swtch_IBUF[3]_inst 
       (.I(swtch[3]),
        .O(swtch_IBUF[3]));
  IBUF \swtch_IBUF[4]_inst 
       (.I(swtch[4]),
        .O(swtch_IBUF[4]));
  IBUF \swtch_IBUF[5]_inst 
       (.I(swtch[5]),
        .O(swtch_IBUF[5]));
  IBUF \swtch_IBUF[6]_inst 
       (.I(swtch[6]),
        .O(swtch_IBUF[6]));
  IBUF \swtch_IBUF[7]_inst 
       (.I(swtch[7]),
        .O(swtch_IBUF[7]));
  IBUF \swtch_IBUF[8]_inst 
       (.I(swtch[8]),
        .O(swtch_IBUF[8]));
  IBUF \swtch_IBUF[9]_inst 
       (.I(swtch[9]),
        .O(swtch_IBUF[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
