// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Mar 26 16:35:02 2024
// Host        : el103-11.ece.usu.edu running 64-bit CentOS Linux release 7.9.2009 (Core)
// Command     : write_verilog -force post_synth.v
// Design      : calculator
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module calculator
   (clk,
    row,
    col,
    select_memory,
    rst,
    overflow,
    up,
    dn,
    load_btn,
    save_btn,
    rst_btn,
    select,
    selectsev,
    seg,
    an,
    led);
  input clk;
  input [3:0]row;
  output [3:0]col;
  input select_memory;
  input rst;
  output overflow;
  input up;
  input dn;
  input load_btn;
  input save_btn;
  input rst_btn;
  input select;
  input selectsev;
  output [6:0]seg;
  output [3:0]an;
  output [6:0]led;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]a;
  wire \a[4]_i_1_n_0 ;
  wire \a[5]_i_1_n_0 ;
  wire \a[6]_i_1_n_0 ;
  wire \a[7]_i_2_n_0 ;
  wire \a[7]_i_3_n_0 ;
  wire \a[7]_i_4_n_0 ;
  wire add_sub1_n_1;
  wire add_sub1_n_2;
  wire add_sub1_n_3;
  wire add_sub1_n_4;
  wire add_sub1_n_5;
  wire add_sub1_n_6;
  wire add_sub1_n_7;
  wire [3:0]an;
  wire [3:0]an_OBUF;
  wire [1:0]anode;
  wire [7:0]b;
  wire \b[4]_i_1_n_0 ;
  wire \b[5]_i_1_n_0 ;
  wire \b[6]_i_1_n_0 ;
  wire \b[7]_i_2_n_0 ;
  wire \b[7]_i_3_n_0 ;
  wire \b[7]_i_4_n_0 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]col;
  wire \col_TRI[0] ;
  wire \col_TRI[1] ;
  wire \col_TRI[2] ;
  wire \col_TRI[3] ;
  wire debouncer3_n_1;
  wire debouncer3_n_2;
  wire debouncer3_n_3;
  wire debouncer3_n_4;
  wire dn;
  wire dn_IBUF;
  wire keycheck1_n_0;
  wire keycheck1_n_1;
  wire keycheck1_n_2;
  wire keycheck1_n_3;
  wire kypd_n_4;
  wire kypd_n_5;
  wire kypd_n_6;
  wire kypd_n_7;
  wire kypd_n_8;
  wire [6:0]led;
  wire load_btn;
  wire load_btn_IBUF;
  wire load_btn_db;
  wire overflow;
  wire overflow_OBUF;
  wire [7:0]q;
  wire [3:0]row;
  wire [3:0]row_IBUF;
  wire rst;
  wire rst_IBUF;
  wire save_btn;
  wire save_btn_IBUF;
  wire save_btn_db;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire select;
  wire select_IBUF;
  wire select_memory;
  wire select_memory_IBUF;
  wire selectsev;
  wire selectsev_IBUF;
  wire switch1_n_0;
  wire switch1_n_1;
  wire switch1_n_2;
  wire switch1_n_3;
  wire switch2_n_0;
  wire switch2_n_1;
  wire switch2_n_2;
  wire switch2_n_3;
  wire switch2_n_4;
  wire switch2_n_5;
  wire switch2_n_6;
  wire switch2_n_7;
  wire switch2_n_8;
  wire [7:0]temp;
  wire up;
  wire up_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \a[4]_i_1 
       (.I0(a[0]),
        .I1(select_memory_IBUF),
        .I2(temp[4]),
        .O(\a[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \a[5]_i_1 
       (.I0(a[1]),
        .I1(select_memory_IBUF),
        .I2(temp[5]),
        .O(\a[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \a[6]_i_1 
       (.I0(a[2]),
        .I1(select_memory_IBUF),
        .I2(temp[6]),
        .O(\a[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \a[7]_i_2 
       (.I0(a[3]),
        .I1(select_memory_IBUF),
        .I2(temp[7]),
        .O(\a[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \a[7]_i_3 
       (.I0(a[6]),
        .I1(a[7]),
        .I2(a[4]),
        .I3(a[5]),
        .O(\a[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \a[7]_i_4 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[0]),
        .I3(a[1]),
        .O(\a[7]_i_4_n_0 ));
  FDCE \a_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_2),
        .CLR(rst_IBUF),
        .D(keycheck1_n_3),
        .Q(a[0]));
  FDCE \a_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_2),
        .CLR(rst_IBUF),
        .D(keycheck1_n_2),
        .Q(a[1]));
  FDCE \a_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_2),
        .CLR(rst_IBUF),
        .D(keycheck1_n_1),
        .Q(a[2]));
  FDCE \a_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_2),
        .CLR(rst_IBUF),
        .D(keycheck1_n_0),
        .Q(a[3]));
  FDCE \a_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_1),
        .CLR(rst_IBUF),
        .D(\a[4]_i_1_n_0 ),
        .Q(a[4]));
  FDCE \a_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_1),
        .CLR(rst_IBUF),
        .D(\a[5]_i_1_n_0 ),
        .Q(a[5]));
  FDCE \a_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_1),
        .CLR(rst_IBUF),
        .D(\a[6]_i_1_n_0 ),
        .Q(a[6]));
  FDCE \a_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_1),
        .CLR(rst_IBUF),
        .D(\a[7]_i_2_n_0 ),
        .Q(a[7]));
  up_down_counter add_sub1
       (.D({add_sub1_n_1,add_sub1_n_2,add_sub1_n_3,add_sub1_n_4,add_sub1_n_5,add_sub1_n_6,add_sub1_n_7}),
        .Q(b),
        .anode(anode),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dn_IBUF(dn_IBUF),
        .overflow_OBUF(overflow_OBUF),
        .overflow_reg_0(a),
        .\q_reg[7]_0 (q),
        .rst_IBUF(rst_IBUF),
        .\seg_reg[0] (switch2_n_4),
        .\seg_reg[1] (switch2_n_5),
        .\seg_reg[2] (switch2_n_3),
        .\seg_reg[3] (switch2_n_1),
        .\seg_reg[4] (switch2_n_0),
        .\seg_reg[5] (switch2_n_6),
        .\seg_reg[6] (switch2_n_2),
        .selectsev_IBUF(selectsev_IBUF),
        .up_IBUF(up_IBUF));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  FDRE \an_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(switch1_n_3),
        .Q(an_OBUF[0]),
        .R(\<const0> ));
  FDRE \an_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(switch1_n_2),
        .Q(an_OBUF[1]),
        .R(\<const0> ));
  FDRE \an_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(switch1_n_1),
        .Q(an_OBUF[2]),
        .R(\<const0> ));
  FDRE \an_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(switch1_n_0),
        .Q(an_OBUF[3]),
        .R(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \b[4]_i_1 
       (.I0(b[0]),
        .I1(select_memory_IBUF),
        .I2(temp[4]),
        .O(\b[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \b[5]_i_1 
       (.I0(b[1]),
        .I1(select_memory_IBUF),
        .I2(temp[5]),
        .O(\b[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \b[6]_i_1 
       (.I0(b[2]),
        .I1(select_memory_IBUF),
        .I2(temp[6]),
        .O(\b[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \b[7]_i_2 
       (.I0(b[3]),
        .I1(select_memory_IBUF),
        .I2(temp[7]),
        .O(\b[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \b[7]_i_3 
       (.I0(b[6]),
        .I1(b[7]),
        .I2(b[4]),
        .I3(b[5]),
        .O(\b[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \b[7]_i_4 
       (.I0(b[2]),
        .I1(b[3]),
        .I2(b[0]),
        .I3(b[1]),
        .O(\b[7]_i_4_n_0 ));
  FDCE \b_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_4),
        .CLR(rst_IBUF),
        .D(keycheck1_n_3),
        .Q(b[0]));
  FDCE \b_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_4),
        .CLR(rst_IBUF),
        .D(keycheck1_n_2),
        .Q(b[1]));
  FDCE \b_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_4),
        .CLR(rst_IBUF),
        .D(keycheck1_n_1),
        .Q(b[2]));
  FDCE \b_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_4),
        .CLR(rst_IBUF),
        .D(keycheck1_n_0),
        .Q(b[3]));
  FDCE \b_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_3),
        .CLR(rst_IBUF),
        .D(\b[4]_i_1_n_0 ),
        .Q(b[4]));
  FDCE \b_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_3),
        .CLR(rst_IBUF),
        .D(\b[5]_i_1_n_0 ),
        .Q(b[5]));
  FDCE \b_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_3),
        .CLR(rst_IBUF),
        .D(\b[6]_i_1_n_0 ),
        .Q(b[6]));
  FDCE \b_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(debouncer3_n_3),
        .CLR(rst_IBUF),
        .D(\b[7]_i_2_n_0 ),
        .Q(b[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUFT \col_OBUFT[0]_inst 
       (.I(\<const0> ),
        .O(col[0]),
        .T(\col_TRI[0] ));
  OBUFT \col_OBUFT[1]_inst 
       (.I(\<const0> ),
        .O(col[1]),
        .T(\col_TRI[1] ));
  OBUFT \col_OBUFT[2]_inst 
       (.I(\<const0> ),
        .O(col[2]),
        .T(\col_TRI[2] ));
  OBUFT \col_OBUFT[3]_inst 
       (.I(\<const0> ),
        .O(col[3]),
        .T(\col_TRI[3] ));
  debouncer debouncer3
       (.E({debouncer3_n_1,debouncer3_n_2}),
        .\a_reg[7] (\a[7]_i_3_n_0 ),
        .\a_reg[7]_0 (\a[7]_i_4_n_0 ),
        .\b_reg[7] (\b[7]_i_3_n_0 ),
        .\b_reg[7]_0 (\b[7]_i_4_n_0 ),
        .btn_db_reg_0({debouncer3_n_3,debouncer3_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_btn_IBUF(load_btn_IBUF),
        .load_btn_db(load_btn_db),
        .rst_IBUF(rst_IBUF),
        .select_IBUF(select_IBUF),
        .select_memory_IBUF(select_memory_IBUF));
  debouncer_0 debouncer4
       (.CLK(save_btn_db),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .save_btn_IBUF(save_btn_IBUF));
  IBUF dn_IBUF_inst
       (.I(dn),
        .O(dn_IBUF));
  keycheck keycheck1
       (.D({keycheck1_n_0,keycheck1_n_1,keycheck1_n_2,keycheck1_n_3}),
        .E(kypd_n_4),
        .Q(temp[3:0]),
        .\b_reg[3] ({kypd_n_5,kypd_n_6,kypd_n_7,kypd_n_8}),
        .load_btn_db(load_btn_db),
        .select_memory_IBUF(select_memory_IBUF));
  keypad kypd
       (.E(kypd_n_4),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\col_TRI[0] (\col_TRI[0] ),
        .\col_TRI[1] (\col_TRI[1] ),
        .\col_TRI[2] (\col_TRI[2] ),
        .\col_TRI[3] (\col_TRI[3] ),
        .\keys_reg[12]_0 ({kypd_n_5,kypd_n_6,kypd_n_7,kypd_n_8}),
        .row_IBUF(row_IBUF),
        .rst_IBUF(rst_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(\<const0> ),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(\<const0> ),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(\<const0> ),
        .O(led[6]));
  IBUF load_btn_IBUF_inst
       (.I(load_btn),
        .O(load_btn_IBUF));
  OBUF overflow_OBUF_inst
       (.I(overflow_OBUF),
        .O(overflow));
  IBUF \row_IBUF[0]_inst 
       (.I(row[0]),
        .O(row_IBUF[0]));
  IBUF \row_IBUF[1]_inst 
       (.I(row[1]),
        .O(row_IBUF[1]));
  IBUF \row_IBUF[2]_inst 
       (.I(row[2]),
        .O(row_IBUF[2]));
  IBUF \row_IBUF[3]_inst 
       (.I(row[3]),
        .O(row_IBUF[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF save_btn_IBUF_inst
       (.I(save_btn),
        .O(save_btn_IBUF));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  FDRE \seg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(add_sub1_n_7),
        .Q(seg_OBUF[0]),
        .R(\<const0> ));
  FDRE \seg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(add_sub1_n_6),
        .Q(seg_OBUF[1]),
        .R(\<const0> ));
  FDRE \seg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(add_sub1_n_5),
        .Q(seg_OBUF[2]),
        .R(\<const0> ));
  FDRE \seg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(add_sub1_n_4),
        .Q(seg_OBUF[3]),
        .R(\<const0> ));
  FDRE \seg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(add_sub1_n_3),
        .Q(seg_OBUF[4]),
        .R(\<const0> ));
  FDRE \seg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(add_sub1_n_2),
        .Q(seg_OBUF[5]),
        .R(\<const0> ));
  FDRE \seg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(add_sub1_n_1),
        .Q(seg_OBUF[6]),
        .R(\<const0> ));
  IBUF select_IBUF_inst
       (.I(select),
        .O(select_IBUF));
  IBUF select_memory_IBUF_inst
       (.I(select_memory),
        .O(select_memory_IBUF));
  IBUF selectsev_IBUF_inst
       (.I(selectsev),
        .O(selectsev_IBUF));
  sevensegmentswitch switch1
       (.D({switch1_n_0,switch1_n_1,switch1_n_2,switch1_n_3}),
        .\an_reg[1] (switch2_n_8),
        .\an_reg[1]_0 (switch2_n_7),
        .anode(anode),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .selectsev_IBUF(selectsev_IBUF));
  sevensegmentswitch_1 switch2
       (.Q(a),
        .\anode_reg[0]_0 (switch2_n_8),
        .\anode_reg[1]_0 (switch2_n_7),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .\seg[4]_i_2_0 (b),
        .selectsev(switch2_n_0),
        .selectsev_0(switch2_n_1),
        .selectsev_1(switch2_n_2),
        .selectsev_2(switch2_n_3),
        .selectsev_3(switch2_n_4),
        .selectsev_4(switch2_n_5),
        .selectsev_5(switch2_n_6),
        .selectsev_IBUF(selectsev_IBUF));
  FDRE \temp_reg[0] 
       (.C(save_btn_db),
        .CE(\<const1> ),
        .D(q[0]),
        .Q(temp[0]),
        .R(\<const0> ));
  FDRE \temp_reg[1] 
       (.C(save_btn_db),
        .CE(\<const1> ),
        .D(q[1]),
        .Q(temp[1]),
        .R(\<const0> ));
  FDRE \temp_reg[2] 
       (.C(save_btn_db),
        .CE(\<const1> ),
        .D(q[2]),
        .Q(temp[2]),
        .R(\<const0> ));
  FDRE \temp_reg[3] 
       (.C(save_btn_db),
        .CE(\<const1> ),
        .D(q[3]),
        .Q(temp[3]),
        .R(\<const0> ));
  FDRE \temp_reg[4] 
       (.C(save_btn_db),
        .CE(\<const1> ),
        .D(q[4]),
        .Q(temp[4]),
        .R(\<const0> ));
  FDRE \temp_reg[5] 
       (.C(save_btn_db),
        .CE(\<const1> ),
        .D(q[5]),
        .Q(temp[5]),
        .R(\<const0> ));
  FDRE \temp_reg[6] 
       (.C(save_btn_db),
        .CE(\<const1> ),
        .D(q[6]),
        .Q(temp[6]),
        .R(\<const0> ));
  FDRE \temp_reg[7] 
       (.C(save_btn_db),
        .CE(\<const1> ),
        .D(q[7]),
        .Q(temp[7]),
        .R(\<const0> ));
  IBUF up_IBUF_inst
       (.I(up),
        .O(up_IBUF));
endmodule

module clock_divider
   (scan,
    E,
    clk_IBUF_BUFG,
    rst_IBUF,
    \keys_reg[0] ,
    \keys_reg[5] ,
    \keys_reg[6] ,
    col1);
  output scan;
  output [3:0]E;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \keys_reg[0] ;
  input \keys_reg[5] ;
  input \keys_reg[6] ;
  input col1;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]E;
  wire clk_IBUF_BUFG;
  wire [31:0]clk_count;
  wire clk_count0_carry__0_n_0;
  wire clk_count0_carry__0_n_1;
  wire clk_count0_carry__0_n_2;
  wire clk_count0_carry__0_n_3;
  wire clk_count0_carry__1_n_0;
  wire clk_count0_carry__1_n_1;
  wire clk_count0_carry__1_n_2;
  wire clk_count0_carry__1_n_3;
  wire clk_count0_carry__2_n_0;
  wire clk_count0_carry__2_n_1;
  wire clk_count0_carry__2_n_2;
  wire clk_count0_carry__2_n_3;
  wire clk_count0_carry__3_n_0;
  wire clk_count0_carry__3_n_1;
  wire clk_count0_carry__3_n_2;
  wire clk_count0_carry__3_n_3;
  wire clk_count0_carry__4_n_0;
  wire clk_count0_carry__4_n_1;
  wire clk_count0_carry__4_n_2;
  wire clk_count0_carry__4_n_3;
  wire clk_count0_carry__5_n_0;
  wire clk_count0_carry__5_n_1;
  wire clk_count0_carry__5_n_2;
  wire clk_count0_carry__5_n_3;
  wire clk_count0_carry__6_n_2;
  wire clk_count0_carry__6_n_3;
  wire clk_count0_carry_n_0;
  wire clk_count0_carry_n_1;
  wire clk_count0_carry_n_2;
  wire clk_count0_carry_n_3;
  wire \clk_count[31]_i_2_n_0 ;
  wire \clk_count[31]_i_3_n_0 ;
  wire \clk_count[31]_i_4_n_0 ;
  wire \clk_count[31]_i_5_n_0 ;
  wire \clk_count[31]_i_6_n_0 ;
  wire \clk_count[31]_i_7_n_0 ;
  wire \clk_count[31]_i_8_n_0 ;
  wire \clk_count[31]_i_9_n_0 ;
  wire [31:0]clk_count_0;
  wire col1;
  wire [31:1]data0;
  wire div_clk;
  wire \keys_reg[0] ;
  wire \keys_reg[5] ;
  wire \keys_reg[6] ;
  wire rst_IBUF;
  wire scan;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry
       (.CI(\<const0> ),
        .CO({clk_count0_carry_n_0,clk_count0_carry_n_1,clk_count0_carry_n_2,clk_count0_carry_n_3}),
        .CYINIT(clk_count[0]),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[4:1]),
        .S(clk_count[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__0
       (.CI(clk_count0_carry_n_0),
        .CO({clk_count0_carry__0_n_0,clk_count0_carry__0_n_1,clk_count0_carry__0_n_2,clk_count0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[8:5]),
        .S(clk_count[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__1
       (.CI(clk_count0_carry__0_n_0),
        .CO({clk_count0_carry__1_n_0,clk_count0_carry__1_n_1,clk_count0_carry__1_n_2,clk_count0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[12:9]),
        .S(clk_count[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__2
       (.CI(clk_count0_carry__1_n_0),
        .CO({clk_count0_carry__2_n_0,clk_count0_carry__2_n_1,clk_count0_carry__2_n_2,clk_count0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[16:13]),
        .S(clk_count[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__3
       (.CI(clk_count0_carry__2_n_0),
        .CO({clk_count0_carry__3_n_0,clk_count0_carry__3_n_1,clk_count0_carry__3_n_2,clk_count0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[20:17]),
        .S(clk_count[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__4
       (.CI(clk_count0_carry__3_n_0),
        .CO({clk_count0_carry__4_n_0,clk_count0_carry__4_n_1,clk_count0_carry__4_n_2,clk_count0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[24:21]),
        .S(clk_count[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__5
       (.CI(clk_count0_carry__4_n_0),
        .CO({clk_count0_carry__5_n_0,clk_count0_carry__5_n_1,clk_count0_carry__5_n_2,clk_count0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[28:25]),
        .S(clk_count[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__6
       (.CI(clk_count0_carry__5_n_0),
        .CO({clk_count0_carry__6_n_2,clk_count0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(data0[31:29]),
        .S({\<const0> ,clk_count[31:29]}));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_count[0]_i_1__1 
       (.I0(\clk_count[31]_i_4_n_0 ),
        .I1(\clk_count[31]_i_3_n_0 ),
        .I2(\clk_count[31]_i_2_n_0 ),
        .I3(clk_count[0]),
        .O(clk_count_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[10]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[10]),
        .O(clk_count_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[11]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[11]),
        .O(clk_count_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[12]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[12]),
        .O(clk_count_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[13]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[13]),
        .O(clk_count_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[14]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[14]),
        .O(clk_count_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[15]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[15]),
        .O(clk_count_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[16]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[16]),
        .O(clk_count_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[17]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[17]),
        .O(clk_count_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[18]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[18]),
        .O(clk_count_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[19]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[19]),
        .O(clk_count_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[1]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[1]),
        .O(clk_count_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[20]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[20]),
        .O(clk_count_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[21]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[21]),
        .O(clk_count_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[22]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[22]),
        .O(clk_count_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[23]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[23]),
        .O(clk_count_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[24]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[24]),
        .O(clk_count_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[25]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[25]),
        .O(clk_count_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[26]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[26]),
        .O(clk_count_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[27]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[27]),
        .O(clk_count_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[28]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[28]),
        .O(clk_count_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[29]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[29]),
        .O(clk_count_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[2]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[2]),
        .O(clk_count_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[30]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(clk_count_0[30]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[31]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[31]),
        .O(clk_count_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[31]_i_2 
       (.I0(clk_count[13]),
        .I1(clk_count[12]),
        .I2(clk_count[10]),
        .I3(clk_count[11]),
        .I4(\clk_count[31]_i_5_n_0 ),
        .O(\clk_count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[31]_i_3 
       (.I0(clk_count[4]),
        .I1(clk_count[5]),
        .I2(clk_count[2]),
        .I3(clk_count[3]),
        .I4(\clk_count[31]_i_6_n_0 ),
        .O(\clk_count[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[31]_i_4 
       (.I0(\clk_count[31]_i_7_n_0 ),
        .I1(\clk_count[31]_i_8_n_0 ),
        .I2(clk_count[31]),
        .I3(clk_count[30]),
        .I4(clk_count[1]),
        .I5(\clk_count[31]_i_9_n_0 ),
        .O(\clk_count[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_count[31]_i_5 
       (.I0(clk_count[15]),
        .I1(clk_count[14]),
        .I2(clk_count[17]),
        .I3(clk_count[16]),
        .O(\clk_count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clk_count[31]_i_6 
       (.I0(clk_count[7]),
        .I1(clk_count[6]),
        .I2(clk_count[9]),
        .I3(clk_count[8]),
        .O(\clk_count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_7 
       (.I0(clk_count[23]),
        .I1(clk_count[22]),
        .I2(clk_count[25]),
        .I3(clk_count[24]),
        .O(\clk_count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_count[31]_i_8 
       (.I0(clk_count[18]),
        .I1(clk_count[19]),
        .I2(clk_count[21]),
        .I3(clk_count[20]),
        .O(\clk_count[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_9 
       (.I0(clk_count[27]),
        .I1(clk_count[26]),
        .I2(clk_count[29]),
        .I3(clk_count[28]),
        .O(\clk_count[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[3]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[3]),
        .O(clk_count_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[4]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[4]),
        .O(clk_count_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[5]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[5]),
        .O(clk_count_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[6]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[6]),
        .O(clk_count_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[7]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[7]),
        .O(clk_count_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[8]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[8]),
        .O(clk_count_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[9]_i_1 
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .I4(data0[9]),
        .O(clk_count_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[0]),
        .Q(clk_count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[10]),
        .Q(clk_count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[11]),
        .Q(clk_count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[12]),
        .Q(clk_count[12]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[13]),
        .Q(clk_count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[14]),
        .Q(clk_count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[15]),
        .Q(clk_count[15]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[16]),
        .Q(clk_count[16]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[17]),
        .Q(clk_count[17]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[18]),
        .Q(clk_count[18]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[19]),
        .Q(clk_count[19]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[1]),
        .Q(clk_count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[20]),
        .Q(clk_count[20]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[21]),
        .Q(clk_count[21]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[22]),
        .Q(clk_count[22]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[23]),
        .Q(clk_count[23]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[24]),
        .Q(clk_count[24]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[25]),
        .Q(clk_count[25]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[26]),
        .Q(clk_count[26]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[27]),
        .Q(clk_count[27]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[28]),
        .Q(clk_count[28]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[29]),
        .Q(clk_count[29]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[2]),
        .Q(clk_count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[30]),
        .Q(clk_count[30]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[31]),
        .Q(clk_count[31]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[3]),
        .Q(clk_count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[4]),
        .Q(clk_count[4]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[5]),
        .Q(clk_count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[6]),
        .Q(clk_count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[7]),
        .Q(clk_count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[8]),
        .Q(clk_count[8]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count_0[9]),
        .Q(clk_count[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    div_clk_i_1
       (.I0(clk_count[0]),
        .I1(\clk_count[31]_i_2_n_0 ),
        .I2(\clk_count[31]_i_3_n_0 ),
        .I3(\clk_count[31]_i_4_n_0 ),
        .O(div_clk));
  FDCE #(
    .INIT(1'b0)) 
    div_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(div_clk),
        .Q(scan));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \keys[13]_i_1 
       (.I0(scan),
        .I1(col1),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \keys[14]_i_1 
       (.I0(scan),
        .I1(\keys_reg[6] ),
        .O(E[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \keys[15]_i_1 
       (.I0(scan),
        .I1(\keys_reg[5] ),
        .O(E[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \keys[7]_i_1 
       (.I0(scan),
        .I1(\keys_reg[0] ),
        .O(E[0]));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module clock_divider__parameterized0
   (div_clk_reg_0,
    clk_IBUF_BUFG,
    rst_IBUF);
  output div_clk_reg_0;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire clk_IBUF_BUFG;
  wire [31:0]clk_count;
  wire clk_count0_carry__0_n_0;
  wire clk_count0_carry__0_n_1;
  wire clk_count0_carry__0_n_2;
  wire clk_count0_carry__0_n_3;
  wire clk_count0_carry__0_n_4;
  wire clk_count0_carry__0_n_5;
  wire clk_count0_carry__0_n_6;
  wire clk_count0_carry__0_n_7;
  wire clk_count0_carry__1_n_0;
  wire clk_count0_carry__1_n_1;
  wire clk_count0_carry__1_n_2;
  wire clk_count0_carry__1_n_3;
  wire clk_count0_carry__1_n_4;
  wire clk_count0_carry__1_n_5;
  wire clk_count0_carry__1_n_6;
  wire clk_count0_carry__1_n_7;
  wire clk_count0_carry__2_n_0;
  wire clk_count0_carry__2_n_1;
  wire clk_count0_carry__2_n_2;
  wire clk_count0_carry__2_n_3;
  wire clk_count0_carry__2_n_4;
  wire clk_count0_carry__2_n_5;
  wire clk_count0_carry__2_n_6;
  wire clk_count0_carry__2_n_7;
  wire clk_count0_carry__3_n_0;
  wire clk_count0_carry__3_n_1;
  wire clk_count0_carry__3_n_2;
  wire clk_count0_carry__3_n_3;
  wire clk_count0_carry__3_n_4;
  wire clk_count0_carry__3_n_5;
  wire clk_count0_carry__3_n_6;
  wire clk_count0_carry__3_n_7;
  wire clk_count0_carry__4_n_0;
  wire clk_count0_carry__4_n_1;
  wire clk_count0_carry__4_n_2;
  wire clk_count0_carry__4_n_3;
  wire clk_count0_carry__4_n_4;
  wire clk_count0_carry__4_n_5;
  wire clk_count0_carry__4_n_6;
  wire clk_count0_carry__4_n_7;
  wire clk_count0_carry__5_n_0;
  wire clk_count0_carry__5_n_1;
  wire clk_count0_carry__5_n_2;
  wire clk_count0_carry__5_n_3;
  wire clk_count0_carry__5_n_4;
  wire clk_count0_carry__5_n_5;
  wire clk_count0_carry__5_n_6;
  wire clk_count0_carry__5_n_7;
  wire clk_count0_carry__6_n_2;
  wire clk_count0_carry__6_n_3;
  wire clk_count0_carry__6_n_5;
  wire clk_count0_carry__6_n_6;
  wire clk_count0_carry__6_n_7;
  wire clk_count0_carry_n_0;
  wire clk_count0_carry_n_1;
  wire clk_count0_carry_n_2;
  wire clk_count0_carry_n_3;
  wire clk_count0_carry_n_4;
  wire clk_count0_carry_n_5;
  wire clk_count0_carry_n_6;
  wire clk_count0_carry_n_7;
  wire \clk_count[31]_i_2__1_n_0 ;
  wire \clk_count[31]_i_3__1_n_0 ;
  wire \clk_count[31]_i_4__1_n_0 ;
  wire \clk_count[31]_i_5__1_n_0 ;
  wire \clk_count[31]_i_6__1_n_0 ;
  wire \clk_count[31]_i_7__1_n_0 ;
  wire \clk_count[31]_i_8__1_n_0 ;
  wire \clk_count[31]_i_9__1_n_0 ;
  wire \clk_count_reg_n_0_[0] ;
  wire \clk_count_reg_n_0_[10] ;
  wire \clk_count_reg_n_0_[11] ;
  wire \clk_count_reg_n_0_[12] ;
  wire \clk_count_reg_n_0_[13] ;
  wire \clk_count_reg_n_0_[14] ;
  wire \clk_count_reg_n_0_[15] ;
  wire \clk_count_reg_n_0_[16] ;
  wire \clk_count_reg_n_0_[17] ;
  wire \clk_count_reg_n_0_[18] ;
  wire \clk_count_reg_n_0_[19] ;
  wire \clk_count_reg_n_0_[1] ;
  wire \clk_count_reg_n_0_[20] ;
  wire \clk_count_reg_n_0_[21] ;
  wire \clk_count_reg_n_0_[22] ;
  wire \clk_count_reg_n_0_[23] ;
  wire \clk_count_reg_n_0_[24] ;
  wire \clk_count_reg_n_0_[25] ;
  wire \clk_count_reg_n_0_[26] ;
  wire \clk_count_reg_n_0_[27] ;
  wire \clk_count_reg_n_0_[28] ;
  wire \clk_count_reg_n_0_[29] ;
  wire \clk_count_reg_n_0_[2] ;
  wire \clk_count_reg_n_0_[30] ;
  wire \clk_count_reg_n_0_[31] ;
  wire \clk_count_reg_n_0_[3] ;
  wire \clk_count_reg_n_0_[4] ;
  wire \clk_count_reg_n_0_[5] ;
  wire \clk_count_reg_n_0_[6] ;
  wire \clk_count_reg_n_0_[7] ;
  wire \clk_count_reg_n_0_[8] ;
  wire \clk_count_reg_n_0_[9] ;
  wire div_clk;
  wire div_clk_reg_0;
  wire rst_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry
       (.CI(\<const0> ),
        .CO({clk_count0_carry_n_0,clk_count0_carry_n_1,clk_count0_carry_n_2,clk_count0_carry_n_3}),
        .CYINIT(\clk_count_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry_n_4,clk_count0_carry_n_5,clk_count0_carry_n_6,clk_count0_carry_n_7}),
        .S({\clk_count_reg_n_0_[4] ,\clk_count_reg_n_0_[3] ,\clk_count_reg_n_0_[2] ,\clk_count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__0
       (.CI(clk_count0_carry_n_0),
        .CO({clk_count0_carry__0_n_0,clk_count0_carry__0_n_1,clk_count0_carry__0_n_2,clk_count0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__0_n_4,clk_count0_carry__0_n_5,clk_count0_carry__0_n_6,clk_count0_carry__0_n_7}),
        .S({\clk_count_reg_n_0_[8] ,\clk_count_reg_n_0_[7] ,\clk_count_reg_n_0_[6] ,\clk_count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__1
       (.CI(clk_count0_carry__0_n_0),
        .CO({clk_count0_carry__1_n_0,clk_count0_carry__1_n_1,clk_count0_carry__1_n_2,clk_count0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__1_n_4,clk_count0_carry__1_n_5,clk_count0_carry__1_n_6,clk_count0_carry__1_n_7}),
        .S({\clk_count_reg_n_0_[12] ,\clk_count_reg_n_0_[11] ,\clk_count_reg_n_0_[10] ,\clk_count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__2
       (.CI(clk_count0_carry__1_n_0),
        .CO({clk_count0_carry__2_n_0,clk_count0_carry__2_n_1,clk_count0_carry__2_n_2,clk_count0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__2_n_4,clk_count0_carry__2_n_5,clk_count0_carry__2_n_6,clk_count0_carry__2_n_7}),
        .S({\clk_count_reg_n_0_[16] ,\clk_count_reg_n_0_[15] ,\clk_count_reg_n_0_[14] ,\clk_count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__3
       (.CI(clk_count0_carry__2_n_0),
        .CO({clk_count0_carry__3_n_0,clk_count0_carry__3_n_1,clk_count0_carry__3_n_2,clk_count0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__3_n_4,clk_count0_carry__3_n_5,clk_count0_carry__3_n_6,clk_count0_carry__3_n_7}),
        .S({\clk_count_reg_n_0_[20] ,\clk_count_reg_n_0_[19] ,\clk_count_reg_n_0_[18] ,\clk_count_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__4
       (.CI(clk_count0_carry__3_n_0),
        .CO({clk_count0_carry__4_n_0,clk_count0_carry__4_n_1,clk_count0_carry__4_n_2,clk_count0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__4_n_4,clk_count0_carry__4_n_5,clk_count0_carry__4_n_6,clk_count0_carry__4_n_7}),
        .S({\clk_count_reg_n_0_[24] ,\clk_count_reg_n_0_[23] ,\clk_count_reg_n_0_[22] ,\clk_count_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__5
       (.CI(clk_count0_carry__4_n_0),
        .CO({clk_count0_carry__5_n_0,clk_count0_carry__5_n_1,clk_count0_carry__5_n_2,clk_count0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__5_n_4,clk_count0_carry__5_n_5,clk_count0_carry__5_n_6,clk_count0_carry__5_n_7}),
        .S({\clk_count_reg_n_0_[28] ,\clk_count_reg_n_0_[27] ,\clk_count_reg_n_0_[26] ,\clk_count_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__6
       (.CI(clk_count0_carry__5_n_0),
        .CO({clk_count0_carry__6_n_2,clk_count0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__6_n_5,clk_count0_carry__6_n_6,clk_count0_carry__6_n_7}),
        .S({\<const0> ,\clk_count_reg_n_0_[31] ,\clk_count_reg_n_0_[30] ,\clk_count_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_count[0]_i_1__3 
       (.I0(\clk_count[31]_i_4__1_n_0 ),
        .I1(\clk_count[31]_i_3__1_n_0 ),
        .I2(\clk_count[31]_i_2__1_n_0 ),
        .I3(\clk_count_reg_n_0_[0] ),
        .O(clk_count[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[10]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__1_n_6),
        .O(clk_count[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[11]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__1_n_5),
        .O(clk_count[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[12]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__1_n_4),
        .O(clk_count[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[13]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__2_n_7),
        .O(clk_count[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[14]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__2_n_6),
        .O(clk_count[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[15]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__2_n_5),
        .O(clk_count[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[16]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__2_n_4),
        .O(clk_count[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[17]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__3_n_7),
        .O(clk_count[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[18]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__3_n_6),
        .O(clk_count[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[19]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__3_n_5),
        .O(clk_count[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[1]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry_n_7),
        .O(clk_count[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[20]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__3_n_4),
        .O(clk_count[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[21]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__4_n_7),
        .O(clk_count[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[22]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__4_n_6),
        .O(clk_count[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[23]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__4_n_5),
        .O(clk_count[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[24]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__4_n_4),
        .O(clk_count[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[25]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__5_n_7),
        .O(clk_count[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[26]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__5_n_6),
        .O(clk_count[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[27]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__5_n_5),
        .O(clk_count[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[28]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__5_n_4),
        .O(clk_count[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[29]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__6_n_7),
        .O(clk_count[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[2]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry_n_6),
        .O(clk_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[30]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__6_n_6),
        .O(clk_count[30]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[31]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__6_n_5),
        .O(clk_count[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[31]_i_2__1 
       (.I0(\clk_count_reg_n_0_[12] ),
        .I1(\clk_count_reg_n_0_[13] ),
        .I2(\clk_count_reg_n_0_[10] ),
        .I3(\clk_count_reg_n_0_[11] ),
        .I4(\clk_count[31]_i_5__1_n_0 ),
        .O(\clk_count[31]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_count[31]_i_3__1 
       (.I0(\clk_count_reg_n_0_[4] ),
        .I1(\clk_count_reg_n_0_[5] ),
        .I2(\clk_count_reg_n_0_[2] ),
        .I3(\clk_count_reg_n_0_[3] ),
        .I4(\clk_count[31]_i_6__1_n_0 ),
        .O(\clk_count[31]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[31]_i_4__1 
       (.I0(\clk_count[31]_i_7__1_n_0 ),
        .I1(\clk_count[31]_i_8__1_n_0 ),
        .I2(\clk_count_reg_n_0_[31] ),
        .I3(\clk_count_reg_n_0_[30] ),
        .I4(\clk_count_reg_n_0_[1] ),
        .I5(\clk_count[31]_i_9__1_n_0 ),
        .O(\clk_count[31]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_count[31]_i_5__1 
       (.I0(\clk_count_reg_n_0_[14] ),
        .I1(\clk_count_reg_n_0_[15] ),
        .I2(\clk_count_reg_n_0_[17] ),
        .I3(\clk_count_reg_n_0_[16] ),
        .O(\clk_count[31]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_count[31]_i_6__1 
       (.I0(\clk_count_reg_n_0_[7] ),
        .I1(\clk_count_reg_n_0_[6] ),
        .I2(\clk_count_reg_n_0_[8] ),
        .I3(\clk_count_reg_n_0_[9] ),
        .O(\clk_count[31]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_7__1 
       (.I0(\clk_count_reg_n_0_[23] ),
        .I1(\clk_count_reg_n_0_[22] ),
        .I2(\clk_count_reg_n_0_[25] ),
        .I3(\clk_count_reg_n_0_[24] ),
        .O(\clk_count[31]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_8__1 
       (.I0(\clk_count_reg_n_0_[19] ),
        .I1(\clk_count_reg_n_0_[18] ),
        .I2(\clk_count_reg_n_0_[21] ),
        .I3(\clk_count_reg_n_0_[20] ),
        .O(\clk_count[31]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_9__1 
       (.I0(\clk_count_reg_n_0_[27] ),
        .I1(\clk_count_reg_n_0_[26] ),
        .I2(\clk_count_reg_n_0_[29] ),
        .I3(\clk_count_reg_n_0_[28] ),
        .O(\clk_count[31]_i_9__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[3]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry_n_5),
        .O(clk_count[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[4]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry_n_4),
        .O(clk_count[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[5]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__0_n_7),
        .O(clk_count[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[6]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__0_n_6),
        .O(clk_count[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[7]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__0_n_5),
        .O(clk_count[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[8]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__0_n_4),
        .O(clk_count[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[9]_i_1__1 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .I4(clk_count0_carry__1_n_7),
        .O(clk_count[9]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[0]),
        .Q(\clk_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[10]),
        .Q(\clk_count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[11]),
        .Q(\clk_count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[12]),
        .Q(\clk_count_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[13]),
        .Q(\clk_count_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[14]),
        .Q(\clk_count_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[15]),
        .Q(\clk_count_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[16]),
        .Q(\clk_count_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[17]),
        .Q(\clk_count_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[18]),
        .Q(\clk_count_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[19]),
        .Q(\clk_count_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[1]),
        .Q(\clk_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[20]),
        .Q(\clk_count_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[21]),
        .Q(\clk_count_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[22]),
        .Q(\clk_count_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[23]),
        .Q(\clk_count_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[24]),
        .Q(\clk_count_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[25]),
        .Q(\clk_count_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[26]),
        .Q(\clk_count_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[27]),
        .Q(\clk_count_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[28]),
        .Q(\clk_count_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[29]),
        .Q(\clk_count_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[2]),
        .Q(\clk_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[30]),
        .Q(\clk_count_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[31]),
        .Q(\clk_count_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[3]),
        .Q(\clk_count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[4]),
        .Q(\clk_count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[5]),
        .Q(\clk_count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[6]),
        .Q(\clk_count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[7]),
        .Q(\clk_count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[8]),
        .Q(\clk_count_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[9]),
        .Q(\clk_count_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    div_clk_i_1__1
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__1_n_0 ),
        .I2(\clk_count[31]_i_3__1_n_0 ),
        .I3(\clk_count[31]_i_4__1_n_0 ),
        .O(div_clk));
  FDCE #(
    .INIT(1'b0)) 
    div_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(div_clk),
        .Q(div_clk_reg_0));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module clock_divider__parameterized0_2
   (div_clk_reg_0,
    clk_IBUF_BUFG,
    rst_IBUF);
  output div_clk_reg_0;
  input clk_IBUF_BUFG;
  input rst_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire clk_IBUF_BUFG;
  wire [31:0]clk_count;
  wire clk_count0_carry__0_n_0;
  wire clk_count0_carry__0_n_1;
  wire clk_count0_carry__0_n_2;
  wire clk_count0_carry__0_n_3;
  wire clk_count0_carry__0_n_4;
  wire clk_count0_carry__0_n_5;
  wire clk_count0_carry__0_n_6;
  wire clk_count0_carry__0_n_7;
  wire clk_count0_carry__1_n_0;
  wire clk_count0_carry__1_n_1;
  wire clk_count0_carry__1_n_2;
  wire clk_count0_carry__1_n_3;
  wire clk_count0_carry__1_n_4;
  wire clk_count0_carry__1_n_5;
  wire clk_count0_carry__1_n_6;
  wire clk_count0_carry__1_n_7;
  wire clk_count0_carry__2_n_0;
  wire clk_count0_carry__2_n_1;
  wire clk_count0_carry__2_n_2;
  wire clk_count0_carry__2_n_3;
  wire clk_count0_carry__2_n_4;
  wire clk_count0_carry__2_n_5;
  wire clk_count0_carry__2_n_6;
  wire clk_count0_carry__2_n_7;
  wire clk_count0_carry__3_n_0;
  wire clk_count0_carry__3_n_1;
  wire clk_count0_carry__3_n_2;
  wire clk_count0_carry__3_n_3;
  wire clk_count0_carry__3_n_4;
  wire clk_count0_carry__3_n_5;
  wire clk_count0_carry__3_n_6;
  wire clk_count0_carry__3_n_7;
  wire clk_count0_carry__4_n_0;
  wire clk_count0_carry__4_n_1;
  wire clk_count0_carry__4_n_2;
  wire clk_count0_carry__4_n_3;
  wire clk_count0_carry__4_n_4;
  wire clk_count0_carry__4_n_5;
  wire clk_count0_carry__4_n_6;
  wire clk_count0_carry__4_n_7;
  wire clk_count0_carry__5_n_0;
  wire clk_count0_carry__5_n_1;
  wire clk_count0_carry__5_n_2;
  wire clk_count0_carry__5_n_3;
  wire clk_count0_carry__5_n_4;
  wire clk_count0_carry__5_n_5;
  wire clk_count0_carry__5_n_6;
  wire clk_count0_carry__5_n_7;
  wire clk_count0_carry__6_n_2;
  wire clk_count0_carry__6_n_3;
  wire clk_count0_carry__6_n_5;
  wire clk_count0_carry__6_n_6;
  wire clk_count0_carry__6_n_7;
  wire clk_count0_carry_n_0;
  wire clk_count0_carry_n_1;
  wire clk_count0_carry_n_2;
  wire clk_count0_carry_n_3;
  wire clk_count0_carry_n_4;
  wire clk_count0_carry_n_5;
  wire clk_count0_carry_n_6;
  wire clk_count0_carry_n_7;
  wire \clk_count[31]_i_2__0_n_0 ;
  wire \clk_count[31]_i_3__0_n_0 ;
  wire \clk_count[31]_i_4__0_n_0 ;
  wire \clk_count[31]_i_5__0_n_0 ;
  wire \clk_count[31]_i_6__0_n_0 ;
  wire \clk_count[31]_i_7__0_n_0 ;
  wire \clk_count[31]_i_8__0_n_0 ;
  wire \clk_count[31]_i_9__0_n_0 ;
  wire \clk_count_reg_n_0_[0] ;
  wire \clk_count_reg_n_0_[10] ;
  wire \clk_count_reg_n_0_[11] ;
  wire \clk_count_reg_n_0_[12] ;
  wire \clk_count_reg_n_0_[13] ;
  wire \clk_count_reg_n_0_[14] ;
  wire \clk_count_reg_n_0_[15] ;
  wire \clk_count_reg_n_0_[16] ;
  wire \clk_count_reg_n_0_[17] ;
  wire \clk_count_reg_n_0_[18] ;
  wire \clk_count_reg_n_0_[19] ;
  wire \clk_count_reg_n_0_[1] ;
  wire \clk_count_reg_n_0_[20] ;
  wire \clk_count_reg_n_0_[21] ;
  wire \clk_count_reg_n_0_[22] ;
  wire \clk_count_reg_n_0_[23] ;
  wire \clk_count_reg_n_0_[24] ;
  wire \clk_count_reg_n_0_[25] ;
  wire \clk_count_reg_n_0_[26] ;
  wire \clk_count_reg_n_0_[27] ;
  wire \clk_count_reg_n_0_[28] ;
  wire \clk_count_reg_n_0_[29] ;
  wire \clk_count_reg_n_0_[2] ;
  wire \clk_count_reg_n_0_[30] ;
  wire \clk_count_reg_n_0_[31] ;
  wire \clk_count_reg_n_0_[3] ;
  wire \clk_count_reg_n_0_[4] ;
  wire \clk_count_reg_n_0_[5] ;
  wire \clk_count_reg_n_0_[6] ;
  wire \clk_count_reg_n_0_[7] ;
  wire \clk_count_reg_n_0_[8] ;
  wire \clk_count_reg_n_0_[9] ;
  wire div_clk;
  wire div_clk_reg_0;
  wire rst_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry
       (.CI(\<const0> ),
        .CO({clk_count0_carry_n_0,clk_count0_carry_n_1,clk_count0_carry_n_2,clk_count0_carry_n_3}),
        .CYINIT(\clk_count_reg_n_0_[0] ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry_n_4,clk_count0_carry_n_5,clk_count0_carry_n_6,clk_count0_carry_n_7}),
        .S({\clk_count_reg_n_0_[4] ,\clk_count_reg_n_0_[3] ,\clk_count_reg_n_0_[2] ,\clk_count_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__0
       (.CI(clk_count0_carry_n_0),
        .CO({clk_count0_carry__0_n_0,clk_count0_carry__0_n_1,clk_count0_carry__0_n_2,clk_count0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__0_n_4,clk_count0_carry__0_n_5,clk_count0_carry__0_n_6,clk_count0_carry__0_n_7}),
        .S({\clk_count_reg_n_0_[8] ,\clk_count_reg_n_0_[7] ,\clk_count_reg_n_0_[6] ,\clk_count_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__1
       (.CI(clk_count0_carry__0_n_0),
        .CO({clk_count0_carry__1_n_0,clk_count0_carry__1_n_1,clk_count0_carry__1_n_2,clk_count0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__1_n_4,clk_count0_carry__1_n_5,clk_count0_carry__1_n_6,clk_count0_carry__1_n_7}),
        .S({\clk_count_reg_n_0_[12] ,\clk_count_reg_n_0_[11] ,\clk_count_reg_n_0_[10] ,\clk_count_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__2
       (.CI(clk_count0_carry__1_n_0),
        .CO({clk_count0_carry__2_n_0,clk_count0_carry__2_n_1,clk_count0_carry__2_n_2,clk_count0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__2_n_4,clk_count0_carry__2_n_5,clk_count0_carry__2_n_6,clk_count0_carry__2_n_7}),
        .S({\clk_count_reg_n_0_[16] ,\clk_count_reg_n_0_[15] ,\clk_count_reg_n_0_[14] ,\clk_count_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__3
       (.CI(clk_count0_carry__2_n_0),
        .CO({clk_count0_carry__3_n_0,clk_count0_carry__3_n_1,clk_count0_carry__3_n_2,clk_count0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__3_n_4,clk_count0_carry__3_n_5,clk_count0_carry__3_n_6,clk_count0_carry__3_n_7}),
        .S({\clk_count_reg_n_0_[20] ,\clk_count_reg_n_0_[19] ,\clk_count_reg_n_0_[18] ,\clk_count_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__4
       (.CI(clk_count0_carry__3_n_0),
        .CO({clk_count0_carry__4_n_0,clk_count0_carry__4_n_1,clk_count0_carry__4_n_2,clk_count0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__4_n_4,clk_count0_carry__4_n_5,clk_count0_carry__4_n_6,clk_count0_carry__4_n_7}),
        .S({\clk_count_reg_n_0_[24] ,\clk_count_reg_n_0_[23] ,\clk_count_reg_n_0_[22] ,\clk_count_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__5
       (.CI(clk_count0_carry__4_n_0),
        .CO({clk_count0_carry__5_n_0,clk_count0_carry__5_n_1,clk_count0_carry__5_n_2,clk_count0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__5_n_4,clk_count0_carry__5_n_5,clk_count0_carry__5_n_6,clk_count0_carry__5_n_7}),
        .S({\clk_count_reg_n_0_[28] ,\clk_count_reg_n_0_[27] ,\clk_count_reg_n_0_[26] ,\clk_count_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 clk_count0_carry__6
       (.CI(clk_count0_carry__5_n_0),
        .CO({clk_count0_carry__6_n_2,clk_count0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({clk_count0_carry__6_n_5,clk_count0_carry__6_n_6,clk_count0_carry__6_n_7}),
        .S({\<const0> ,\clk_count_reg_n_0_[31] ,\clk_count_reg_n_0_[30] ,\clk_count_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \clk_count[0]_i_1__2 
       (.I0(\clk_count[31]_i_4__0_n_0 ),
        .I1(\clk_count[31]_i_3__0_n_0 ),
        .I2(\clk_count[31]_i_2__0_n_0 ),
        .I3(\clk_count_reg_n_0_[0] ),
        .O(clk_count[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[10]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__1_n_6),
        .O(clk_count[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[11]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__1_n_5),
        .O(clk_count[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[12]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__1_n_4),
        .O(clk_count[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[13]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__2_n_7),
        .O(clk_count[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[14]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__2_n_6),
        .O(clk_count[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[15]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__2_n_5),
        .O(clk_count[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[16]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__2_n_4),
        .O(clk_count[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[17]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__3_n_7),
        .O(clk_count[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[18]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__3_n_6),
        .O(clk_count[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[19]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__3_n_5),
        .O(clk_count[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[1]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry_n_7),
        .O(clk_count[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[20]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__3_n_4),
        .O(clk_count[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[21]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__4_n_7),
        .O(clk_count[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[22]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__4_n_6),
        .O(clk_count[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[23]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__4_n_5),
        .O(clk_count[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[24]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__4_n_4),
        .O(clk_count[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[25]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__5_n_7),
        .O(clk_count[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[26]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__5_n_6),
        .O(clk_count[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[27]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__5_n_5),
        .O(clk_count[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[28]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__5_n_4),
        .O(clk_count[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[29]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__6_n_7),
        .O(clk_count[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[2]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry_n_6),
        .O(clk_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[30]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__6_n_6),
        .O(clk_count[30]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[31]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__6_n_5),
        .O(clk_count[31]));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \clk_count[31]_i_2__0 
       (.I0(\clk_count_reg_n_0_[12] ),
        .I1(\clk_count_reg_n_0_[13] ),
        .I2(\clk_count_reg_n_0_[10] ),
        .I3(\clk_count_reg_n_0_[11] ),
        .I4(\clk_count[31]_i_5__0_n_0 ),
        .O(\clk_count[31]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \clk_count[31]_i_3__0 
       (.I0(\clk_count_reg_n_0_[4] ),
        .I1(\clk_count_reg_n_0_[5] ),
        .I2(\clk_count_reg_n_0_[2] ),
        .I3(\clk_count_reg_n_0_[3] ),
        .I4(\clk_count[31]_i_6__0_n_0 ),
        .O(\clk_count[31]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \clk_count[31]_i_4__0 
       (.I0(\clk_count[31]_i_7__0_n_0 ),
        .I1(\clk_count[31]_i_8__0_n_0 ),
        .I2(\clk_count_reg_n_0_[31] ),
        .I3(\clk_count_reg_n_0_[30] ),
        .I4(\clk_count_reg_n_0_[1] ),
        .I5(\clk_count[31]_i_9__0_n_0 ),
        .O(\clk_count[31]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \clk_count[31]_i_5__0 
       (.I0(\clk_count_reg_n_0_[14] ),
        .I1(\clk_count_reg_n_0_[15] ),
        .I2(\clk_count_reg_n_0_[17] ),
        .I3(\clk_count_reg_n_0_[16] ),
        .O(\clk_count[31]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \clk_count[31]_i_6__0 
       (.I0(\clk_count_reg_n_0_[7] ),
        .I1(\clk_count_reg_n_0_[6] ),
        .I2(\clk_count_reg_n_0_[8] ),
        .I3(\clk_count_reg_n_0_[9] ),
        .O(\clk_count[31]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_7__0 
       (.I0(\clk_count_reg_n_0_[23] ),
        .I1(\clk_count_reg_n_0_[22] ),
        .I2(\clk_count_reg_n_0_[25] ),
        .I3(\clk_count_reg_n_0_[24] ),
        .O(\clk_count[31]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_8__0 
       (.I0(\clk_count_reg_n_0_[19] ),
        .I1(\clk_count_reg_n_0_[18] ),
        .I2(\clk_count_reg_n_0_[21] ),
        .I3(\clk_count_reg_n_0_[20] ),
        .O(\clk_count[31]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[31]_i_9__0 
       (.I0(\clk_count_reg_n_0_[27] ),
        .I1(\clk_count_reg_n_0_[26] ),
        .I2(\clk_count_reg_n_0_[29] ),
        .I3(\clk_count_reg_n_0_[28] ),
        .O(\clk_count[31]_i_9__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[3]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry_n_5),
        .O(clk_count[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[4]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry_n_4),
        .O(clk_count[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[5]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__0_n_7),
        .O(clk_count[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[6]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__0_n_6),
        .O(clk_count[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[7]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__0_n_5),
        .O(clk_count[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[8]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__0_n_4),
        .O(clk_count[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \clk_count[9]_i_1__0 
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .I4(clk_count0_carry__1_n_7),
        .O(clk_count[9]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[0]),
        .Q(\clk_count_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[10]),
        .Q(\clk_count_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[11]),
        .Q(\clk_count_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[12]),
        .Q(\clk_count_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[13]),
        .Q(\clk_count_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[14]),
        .Q(\clk_count_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[15]),
        .Q(\clk_count_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[16]),
        .Q(\clk_count_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[17]),
        .Q(\clk_count_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[18]),
        .Q(\clk_count_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[19]),
        .Q(\clk_count_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[1]),
        .Q(\clk_count_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[20]),
        .Q(\clk_count_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[21]),
        .Q(\clk_count_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[22]),
        .Q(\clk_count_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[23]),
        .Q(\clk_count_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[24]),
        .Q(\clk_count_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[25]),
        .Q(\clk_count_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[26]),
        .Q(\clk_count_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[27]),
        .Q(\clk_count_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[28]),
        .Q(\clk_count_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[29]),
        .Q(\clk_count_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[2]),
        .Q(\clk_count_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[30]),
        .Q(\clk_count_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[31]),
        .Q(\clk_count_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[3]),
        .Q(\clk_count_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[4]),
        .Q(\clk_count_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[5]),
        .Q(\clk_count_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[6]),
        .Q(\clk_count_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[7]),
        .Q(\clk_count_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[8]),
        .Q(\clk_count_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(clk_count[9]),
        .Q(\clk_count_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    div_clk_i_1__0
       (.I0(\clk_count_reg_n_0_[0] ),
        .I1(\clk_count[31]_i_2__0_n_0 ),
        .I2(\clk_count[31]_i_3__0_n_0 ),
        .I3(\clk_count[31]_i_4__0_n_0 ),
        .O(div_clk));
  FDCE #(
    .INIT(1'b0)) 
    div_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(div_clk),
        .Q(div_clk_reg_0));
endmodule

module debouncer
   (load_btn_db,
    E,
    btn_db_reg_0,
    clk_IBUF_BUFG,
    rst_IBUF,
    select_IBUF,
    \a_reg[7] ,
    \a_reg[7]_0 ,
    select_memory_IBUF,
    \b_reg[7] ,
    \b_reg[7]_0 ,
    load_btn_IBUF);
  output load_btn_db;
  output [1:0]E;
  output [1:0]btn_db_reg_0;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input select_IBUF;
  input \a_reg[7] ;
  input \a_reg[7]_0 ;
  input select_memory_IBUF;
  input \b_reg[7] ;
  input \b_reg[7]_0 ;
  input load_btn_IBUF;

  wire \<const1> ;
  wire [1:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire T1_n_0;
  wire T1_n_1;
  wire T1_n_2;
  wire \a_reg[7] ;
  wire \a_reg[7]_0 ;
  wire \b_reg[7] ;
  wire \b_reg[7]_0 ;
  wire [1:0]btn_db_reg_0;
  wire clear_reg_n_0;
  wire clk_IBUF_BUFG;
  wire load_btn_IBUF;
  wire load_btn_db;
  wire rst_IBUF;
  wire select_IBUF;
  wire select_memory_IBUF;
  wire [1:0]state;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(load_btn_IBUF),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS:01,RELEASE:10,WAIT:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "PRESS:01,RELEASE:10,WAIT:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(T1_n_2),
        .Q(state[1]));
  tcounter_3 T1
       (.\FSM_sequential_state_reg[1] (T1_n_0),
        .\FSM_sequential_state_reg[1]_0 (T1_n_1),
        .\FSM_sequential_state_reg[1]_1 (clear_reg_n_0),
        .btn_db_reg(load_btn_db),
        .clear_reg(T1_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .load_btn_IBUF(load_btn_IBUF),
        .rst_IBUF(rst_IBUF),
        .state(state));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \a[3]_i_1 
       (.I0(load_btn_db),
        .I1(select_IBUF),
        .O(E[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAA00A800)) 
    \a[7]_i_1 
       (.I0(select_IBUF),
        .I1(\a_reg[7] ),
        .I2(\a_reg[7]_0 ),
        .I3(load_btn_db),
        .I4(select_memory_IBUF),
        .O(E[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \b[3]_i_1 
       (.I0(load_btn_db),
        .I1(select_IBUF),
        .O(btn_db_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h55005400)) 
    \b[7]_i_1 
       (.I0(select_IBUF),
        .I1(\b_reg[7] ),
        .I2(\b_reg[7]_0 ),
        .I3(load_btn_db),
        .I4(select_memory_IBUF),
        .O(btn_db_reg_0[1]));
  FDCE #(
    .INIT(1'b0)) 
    btn_db_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(T1_n_1),
        .Q(load_btn_db));
  FDPE #(
    .INIT(1'b1)) 
    clear_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(T1_n_0),
        .PRE(rst_IBUF),
        .Q(clear_reg_n_0));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module debouncer_0
   (CLK,
    clk_IBUF_BUFG,
    rst_IBUF,
    save_btn_IBUF);
  output CLK;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input save_btn_IBUF;

  wire \<const1> ;
  wire CLK;
  wire \FSM_sequential_state[0]_i_1__0_n_0 ;
  wire T1_n_0;
  wire T1_n_1;
  wire T1_n_2;
  wire clear_reg_n_0;
  wire clk_IBUF_BUFG;
  wire rst_IBUF;
  wire save_btn_IBUF;
  wire [1:0]state;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(save_btn_IBUF),
        .O(\FSM_sequential_state[0]_i_1__0_n_0 ));
  (* FSM_ENCODED_STATES = "PRESS:01,RELEASE:10,WAIT:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(\FSM_sequential_state[0]_i_1__0_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "PRESS:01,RELEASE:10,WAIT:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(T1_n_2),
        .Q(state[1]));
  tcounter T1
       (.CLK(CLK),
        .\FSM_sequential_state_reg[1] (T1_n_0),
        .\FSM_sequential_state_reg[1]_0 (T1_n_1),
        .\FSM_sequential_state_reg[1]_1 (clear_reg_n_0),
        .clear_reg(T1_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .rst_IBUF(rst_IBUF),
        .save_btn_IBUF(save_btn_IBUF),
        .state(state));
  VCC VCC
       (.P(\<const1> ));
  FDCE #(
    .INIT(1'b0)) 
    btn_db_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(T1_n_1),
        .Q(CLK));
  FDPE #(
    .INIT(1'b1)) 
    clear_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(T1_n_0),
        .PRE(rst_IBUF),
        .Q(clear_reg_n_0));
endmodule

module keycheck
   (D,
    load_btn_db,
    select_memory_IBUF,
    Q,
    \b_reg[3] ,
    E);
  output [3:0]D;
  input load_btn_db;
  input select_memory_IBUF;
  input [3:0]Q;
  input [3:0]\b_reg[3] ;
  input [0:0]E;

  wire [3:0]D;
  wire [0:0]E;
  wire GND_1;
  wire [3:0]Q;
  wire VCC_1;
  wire [3:0]\b_reg[3] ;
  wire [3:0]check;
  wire load_btn_db;
  wire select_memory_IBUF;

  GND GND
       (.G(GND_1));
  VCC VCC
       (.P(VCC_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a[0]_i_1 
       (.I0(check[0]),
        .I1(load_btn_db),
        .I2(select_memory_IBUF),
        .I3(Q[0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a[1]_i_1 
       (.I0(check[1]),
        .I1(load_btn_db),
        .I2(select_memory_IBUF),
        .I3(Q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a[2]_i_1 
       (.I0(check[2]),
        .I1(load_btn_db),
        .I2(select_memory_IBUF),
        .I3(Q[2]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \a[3]_i_2 
       (.I0(check[3]),
        .I1(load_btn_db),
        .I2(select_memory_IBUF),
        .I3(Q[3]),
        .O(D[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_reg[0] 
       (.CLR(GND_1),
        .D(\b_reg[3] [0]),
        .G(E),
        .GE(VCC_1),
        .Q(check[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_reg[1] 
       (.CLR(GND_1),
        .D(\b_reg[3] [1]),
        .G(E),
        .GE(VCC_1),
        .Q(check[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_reg[2] 
       (.CLR(GND_1),
        .D(\b_reg[3] [2]),
        .G(E),
        .GE(VCC_1),
        .Q(check[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \a_reg[3] 
       (.CLR(GND_1),
        .D(\b_reg[3] [3]),
        .G(E),
        .GE(VCC_1),
        .Q(check[3]));
endmodule

module keypad
   (\col_TRI[3] ,
    \col_TRI[2] ,
    \col_TRI[1] ,
    \col_TRI[0] ,
    E,
    \keys_reg[12]_0 ,
    clk_IBUF_BUFG,
    rst_IBUF,
    row_IBUF);
  output \col_TRI[3] ;
  output \col_TRI[2] ;
  output \col_TRI[1] ;
  output \col_TRI[0] ;
  output [0:0]E;
  output [3:0]\keys_reg[12]_0 ;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input [3:0]row_IBUF;

  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \a_reg[0]_i_2_n_0 ;
  wire \a_reg[0]_i_3_n_0 ;
  wire \a_reg[0]_i_4_n_0 ;
  wire \a_reg[0]_i_5_n_0 ;
  wire \a_reg[1]_i_2_n_0 ;
  wire \a_reg[1]_i_3_n_0 ;
  wire \a_reg[3]_i_3_n_0 ;
  wire \a_reg[3]_i_4_n_0 ;
  wire \a_reg[3]_i_5_n_0 ;
  wire \a_reg[3]_i_6_n_0 ;
  wire \a_reg[3]_i_7_n_0 ;
  wire clk_IBUF_BUFG;
  wire clkdiv_n_1;
  wire clkdiv_n_2;
  wire clkdiv_n_3;
  wire clkdiv_n_4;
  wire col1;
  wire \col_TRI[0] ;
  wire \col_TRI[1] ;
  wire \col_TRI[2] ;
  wire \col_TRI[3] ;
  wire [15:0]keys;
  wire \keys[10]_i_1_n_0 ;
  wire \keys[11]_i_1_n_0 ;
  wire \keys[12]_i_1_n_0 ;
  wire \keys[15]_i_2_n_0 ;
  wire [3:0]\keys_reg[12]_0 ;
  wire [3:0]row_IBUF;
  wire rst_IBUF;
  wire scan;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\col_TRI[0] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(\col_TRI[1] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\col_TRI[2] ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .CLR(rst_IBUF),
        .D(\col_TRI[3] ),
        .Q(\col_TRI[0] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\col_TRI[1] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\col_TRI[2] ));
  (* FSM_ENCODED_STATES = "iSTATE:0001,iSTATE0:0010,iSTATE1:0100,iSTATE2:1000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(scan),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .PRE(rst_IBUF),
        .Q(\col_TRI[3] ));
  LUT4 #(
    .INIT(16'hBABB)) 
    \a_reg[0]_i_1 
       (.I0(keys[15]),
        .I1(keys[14]),
        .I2(\a_reg[0]_i_2_n_0 ),
        .I3(\a_reg[0]_i_3_n_0 ),
        .O(\keys_reg[12]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hBABBBABA)) 
    \a_reg[0]_i_2 
       (.I0(keys[13]),
        .I1(keys[12]),
        .I2(keys[11]),
        .I3(keys[10]),
        .I4(keys[9]),
        .O(\a_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFFFFFF1)) 
    \a_reg[0]_i_3 
       (.I0(\a_reg[0]_i_4_n_0 ),
        .I1(keys[5]),
        .I2(keys[10]),
        .I3(\a_reg[0]_i_5_n_0 ),
        .I4(keys[6]),
        .I5(keys[7]),
        .O(\a_reg[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00F2)) 
    \a_reg[0]_i_4 
       (.I0(keys[1]),
        .I1(keys[2]),
        .I2(keys[3]),
        .I3(keys[4]),
        .O(\a_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \a_reg[0]_i_5 
       (.I0(keys[12]),
        .I1(keys[8]),
        .O(\a_reg[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEF)) 
    \a_reg[1]_i_1 
       (.I0(keys[15]),
        .I1(keys[14]),
        .I2(\a_reg[1]_i_2_n_0 ),
        .I3(keys[12]),
        .I4(keys[13]),
        .O(\keys_reg[12]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h000000FE)) 
    \a_reg[1]_i_2 
       (.I0(keys[9]),
        .I1(keys[8]),
        .I2(\a_reg[1]_i_3_n_0 ),
        .I3(keys[10]),
        .I4(keys[11]),
        .O(\a_reg[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111110001)) 
    \a_reg[1]_i_3 
       (.I0(keys[7]),
        .I1(keys[6]),
        .I2(keys[2]),
        .I3(keys[3]),
        .I4(keys[5]),
        .I5(keys[4]),
        .O(\a_reg[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
    \a_reg[2]_i_1 
       (.I0(keys[12]),
        .I1(keys[13]),
        .I2(keys[14]),
        .I3(keys[15]),
        .I4(\a_reg[3]_i_5_n_0 ),
        .I5(\a_reg[3]_i_3_n_0 ),
        .O(\keys_reg[12]_0 [2]));
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \a_reg[3]_i_1 
       (.I0(keys[12]),
        .I1(keys[13]),
        .I2(keys[14]),
        .I3(keys[15]),
        .I4(\a_reg[3]_i_3_n_0 ),
        .O(\keys_reg[12]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \a_reg[3]_i_2 
       (.I0(\a_reg[3]_i_4_n_0 ),
        .I1(keys[0]),
        .I2(keys[1]),
        .I3(keys[13]),
        .I4(keys[9]),
        .I5(\a_reg[3]_i_5_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \a_reg[3]_i_3 
       (.I0(keys[8]),
        .I1(keys[9]),
        .I2(keys[10]),
        .I3(keys[11]),
        .O(\a_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \a_reg[3]_i_4 
       (.I0(\a_reg[3]_i_6_n_0 ),
        .I1(\a_reg[3]_i_7_n_0 ),
        .I2(keys[12]),
        .I3(keys[8]),
        .I4(keys[2]),
        .I5(keys[3]),
        .O(\a_reg[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \a_reg[3]_i_5 
       (.I0(keys[7]),
        .I1(keys[6]),
        .I2(keys[4]),
        .I3(keys[5]),
        .O(\a_reg[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \a_reg[3]_i_6 
       (.I0(keys[14]),
        .I1(keys[15]),
        .O(\a_reg[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \a_reg[3]_i_7 
       (.I0(keys[11]),
        .I1(keys[10]),
        .O(\a_reg[3]_i_7_n_0 ));
  clock_divider clkdiv
       (.E({clkdiv_n_1,clkdiv_n_2,clkdiv_n_3,clkdiv_n_4}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .col1(col1),
        .\keys_reg[0] (\FSM_onehot_state[1]_i_2_n_0 ),
        .\keys_reg[5] (\FSM_onehot_state[2]_i_2_n_0 ),
        .\keys_reg[6] (\FSM_onehot_state[3]_i_2_n_0 ),
        .rst_IBUF(rst_IBUF),
        .scan(scan));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[10]_i_1 
       (.I0(row_IBUF[0]),
        .O(\keys[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[11]_i_1 
       (.I0(row_IBUF[1]),
        .O(\keys[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[12]_i_1 
       (.I0(row_IBUF[2]),
        .O(\keys[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[13]_i_2 
       (.I0(\col_TRI[3] ),
        .O(col1));
  LUT1 #(
    .INIT(2'h1)) 
    \keys[15]_i_2 
       (.I0(row_IBUF[3]),
        .O(\keys[15]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(keys[0]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(keys[10]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(keys[11]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(keys[12]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_3),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(keys[13]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(keys[14]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[15]_i_2_n_0 ),
        .Q(keys[15]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(keys[1]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(keys[2]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[10]_i_1_n_0 ),
        .Q(keys[3]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(keys[4]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(keys[5]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[11]_i_1_n_0 ),
        .Q(keys[6]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_4),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(keys[7]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_1),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(keys[8]));
  FDCE #(
    .INIT(1'b0)) 
    \keys_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(clkdiv_n_2),
        .CLR(rst_IBUF),
        .D(\keys[12]_i_1_n_0 ),
        .Q(keys[9]));
endmodule

module sevensegmentswitch
   (D,
    anode,
    clk_IBUF_BUFG,
    rst_IBUF,
    \an_reg[1] ,
    \an_reg[1]_0 ,
    selectsev_IBUF);
  output [3:0]D;
  output [1:0]anode;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \an_reg[1] ;
  input \an_reg[1]_0 ;
  input selectsev_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]D;
  wire \an_reg[1] ;
  wire \an_reg[1]_0 ;
  wire [1:0]anode;
  wire \anode[0]_i_1_n_0 ;
  wire \anode[1]_i_1_n_0 ;
  wire clk_IBUF_BUFG;
  wire div_n_0;
  wire rst_IBUF;
  wire selectsev_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hEEEEFFF0)) 
    \an[0]_i_1 
       (.I0(anode[1]),
        .I1(anode[0]),
        .I2(\an_reg[1]_0 ),
        .I3(\an_reg[1] ),
        .I4(selectsev_IBUF),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDDDDFF0F)) 
    \an[1]_i_1 
       (.I0(anode[0]),
        .I1(anode[1]),
        .I2(\an_reg[1] ),
        .I3(\an_reg[1]_0 ),
        .I4(selectsev_IBUF),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hDDDDFF0F)) 
    \an[2]_i_1 
       (.I0(anode[1]),
        .I1(anode[0]),
        .I2(\an_reg[1]_0 ),
        .I3(\an_reg[1] ),
        .I4(selectsev_IBUF),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h77770FFF)) 
    \an[3]_i_1 
       (.I0(anode[0]),
        .I1(anode[1]),
        .I2(\an_reg[1] ),
        .I3(\an_reg[1]_0 ),
        .I4(selectsev_IBUF),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \anode[0]_i_1 
       (.I0(anode[0]),
        .O(\anode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \anode[1]_i_1 
       (.I0(anode[0]),
        .I1(anode[1]),
        .O(\anode[1]_i_1_n_0 ));
  FDRE \anode_reg[0] 
       (.C(div_n_0),
        .CE(\<const1> ),
        .D(\anode[0]_i_1_n_0 ),
        .Q(anode[0]),
        .R(\<const0> ));
  FDRE \anode_reg[1] 
       (.C(div_n_0),
        .CE(\<const1> ),
        .D(\anode[1]_i_1_n_0 ),
        .Q(anode[1]),
        .R(\<const0> ));
  clock_divider__parameterized0_2 div
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .div_clk_reg_0(div_n_0),
        .rst_IBUF(rst_IBUF));
endmodule

(* ORIG_REF_NAME = "sevensegmentswitch" *) 
module sevensegmentswitch_1
   (selectsev,
    selectsev_0,
    selectsev_1,
    selectsev_2,
    selectsev_3,
    selectsev_4,
    selectsev_5,
    \anode_reg[1]_0 ,
    \anode_reg[0]_0 ,
    clk_IBUF_BUFG,
    rst_IBUF,
    selectsev_IBUF,
    Q,
    \seg[4]_i_2_0 );
  output selectsev;
  output selectsev_0;
  output selectsev_1;
  output selectsev_2;
  output selectsev_3;
  output selectsev_4;
  output selectsev_5;
  output \anode_reg[1]_0 ;
  output \anode_reg[0]_0 ;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input selectsev_IBUF;
  input [7:0]Q;
  input [7:0]\seg[4]_i_2_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]Q;
  wire \anode[0]_i_1_n_0 ;
  wire \anode[1]_i_1_n_0 ;
  wire \anode_reg[0]_0 ;
  wire \anode_reg[1]_0 ;
  wire clk_IBUF_BUFG;
  wire div_n_0;
  wire rst_IBUF;
  wire [7:0]\seg[4]_i_2_0 ;
  wire \seg[6]_i_10_n_0 ;
  wire \seg[6]_i_7_n_0 ;
  wire \seg[6]_i_8_n_0 ;
  wire \seg[6]_i_9_n_0 ;
  wire selectsev;
  wire selectsev_0;
  wire selectsev_1;
  wire selectsev_2;
  wire selectsev_3;
  wire selectsev_4;
  wire selectsev_5;
  wire selectsev_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \anode[0]_i_1 
       (.I0(\anode_reg[0]_0 ),
        .O(\anode[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \anode[1]_i_1 
       (.I0(\anode_reg[0]_0 ),
        .I1(\anode_reg[1]_0 ),
        .O(\anode[1]_i_1_n_0 ));
  FDRE \anode_reg[0] 
       (.C(div_n_0),
        .CE(\<const1> ),
        .D(\anode[0]_i_1_n_0 ),
        .Q(\anode_reg[0]_0 ),
        .R(\<const0> ));
  FDRE \anode_reg[1] 
       (.C(div_n_0),
        .CE(\<const1> ),
        .D(\anode[1]_i_1_n_0 ),
        .Q(\anode_reg[1]_0 ),
        .R(\<const0> ));
  clock_divider__parameterized0 div
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .div_clk_reg_0(div_n_0),
        .rst_IBUF(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hFBFFBEEF)) 
    \seg[0]_i_2 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_7_n_0 ),
        .I2(\seg[6]_i_10_n_0 ),
        .I3(\seg[6]_i_8_n_0 ),
        .I4(\seg[6]_i_9_n_0 ),
        .O(selectsev_3));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hBBAFEFBF)) 
    \seg[1]_i_2 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_7_n_0 ),
        .I2(\seg[6]_i_10_n_0 ),
        .I3(\seg[6]_i_8_n_0 ),
        .I4(\seg[6]_i_9_n_0 ),
        .O(selectsev_4));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hBFBEFFBF)) 
    \seg[2]_i_2 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_7_n_0 ),
        .I2(\seg[6]_i_10_n_0 ),
        .I3(\seg[6]_i_8_n_0 ),
        .I4(\seg[6]_i_9_n_0 ),
        .O(selectsev_2));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAFFBFEEF)) 
    \seg[3]_i_2 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_7_n_0 ),
        .I2(\seg[6]_i_10_n_0 ),
        .I3(\seg[6]_i_8_n_0 ),
        .I4(\seg[6]_i_9_n_0 ),
        .O(selectsev_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hEEFFEAEF)) 
    \seg[4]_i_2 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_7_n_0 ),
        .I2(\seg[6]_i_10_n_0 ),
        .I3(\seg[6]_i_8_n_0 ),
        .I4(\seg[6]_i_9_n_0 ),
        .O(selectsev));
  LUT5 #(
    .INIT(32'hEEFEBEFF)) 
    \seg[5]_i_2 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_7_n_0 ),
        .I2(\seg[6]_i_10_n_0 ),
        .I3(\seg[6]_i_8_n_0 ),
        .I4(\seg[6]_i_9_n_0 ),
        .O(selectsev_5));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg[6]_i_10 
       (.I0(Q[2]),
        .I1(Q[6]),
        .I2(\seg[4]_i_2_0 [2]),
        .I3(\anode_reg[1]_0 ),
        .I4(\anode_reg[0]_0 ),
        .I5(\seg[4]_i_2_0 [6]),
        .O(\seg[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hEFFBFFEE)) 
    \seg[6]_i_6 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_7_n_0 ),
        .I2(\seg[6]_i_8_n_0 ),
        .I3(\seg[6]_i_9_n_0 ),
        .I4(\seg[6]_i_10_n_0 ),
        .O(selectsev_1));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg[6]_i_7 
       (.I0(Q[3]),
        .I1(Q[7]),
        .I2(\seg[4]_i_2_0 [3]),
        .I3(\anode_reg[1]_0 ),
        .I4(\anode_reg[0]_0 ),
        .I5(\seg[4]_i_2_0 [7]),
        .O(\seg[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg[6]_i_8 
       (.I0(Q[0]),
        .I1(Q[4]),
        .I2(\seg[4]_i_2_0 [0]),
        .I3(\anode_reg[1]_0 ),
        .I4(\anode_reg[0]_0 ),
        .I5(\seg[4]_i_2_0 [4]),
        .O(\seg[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \seg[6]_i_9 
       (.I0(Q[1]),
        .I1(Q[5]),
        .I2(\seg[4]_i_2_0 [1]),
        .I3(\anode_reg[1]_0 ),
        .I4(\anode_reg[0]_0 ),
        .I5(\seg[4]_i_2_0 [5]),
        .O(\seg[6]_i_9_n_0 ));
endmodule

module tcounter
   (\FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    clear_reg,
    clk_IBUF_BUFG,
    rst_IBUF,
    \FSM_sequential_state_reg[1]_1 ,
    save_btn_IBUF,
    state,
    CLK);
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output clear_reg;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \FSM_sequential_state_reg[1]_1 ;
  input save_btn_IBUF;
  input [1:0]state;
  input CLK;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire clear_reg;
  wire clk_IBUF_BUFG;
  wire \clk_count[0]_i_10__0_n_0 ;
  wire \clk_count[0]_i_11__0_n_0 ;
  wire \clk_count[0]_i_12__0_n_0 ;
  wire \clk_count[0]_i_13__0_n_0 ;
  wire \clk_count[0]_i_14__0_n_0 ;
  wire \clk_count[0]_i_15__0_n_0 ;
  wire \clk_count[0]_i_1__0_n_0 ;
  wire \clk_count[0]_i_3__0_n_0 ;
  wire \clk_count[0]_i_4__0_n_0 ;
  wire \clk_count[0]_i_5__0_n_0 ;
  wire \clk_count[0]_i_6__0_n_0 ;
  wire \clk_count[0]_i_7__0_n_0 ;
  wire \clk_count[0]_i_8__0_n_0 ;
  wire \clk_count[0]_i_9__0_n_0 ;
  wire \clk_count[12]_i_2__0_n_0 ;
  wire \clk_count[12]_i_3__0_n_0 ;
  wire \clk_count[12]_i_4__0_n_0 ;
  wire \clk_count[12]_i_5__0_n_0 ;
  wire \clk_count[16]_i_2__0_n_0 ;
  wire \clk_count[16]_i_3__0_n_0 ;
  wire \clk_count[16]_i_4__0_n_0 ;
  wire \clk_count[16]_i_5__0_n_0 ;
  wire \clk_count[20]_i_2__0_n_0 ;
  wire \clk_count[20]_i_3__0_n_0 ;
  wire \clk_count[20]_i_4__0_n_0 ;
  wire \clk_count[20]_i_5__0_n_0 ;
  wire \clk_count[24]_i_2__0_n_0 ;
  wire \clk_count[24]_i_3__0_n_0 ;
  wire \clk_count[24]_i_4__0_n_0 ;
  wire \clk_count[24]_i_5__0_n_0 ;
  wire \clk_count[28]_i_2__0_n_0 ;
  wire \clk_count[28]_i_3__0_n_0 ;
  wire \clk_count[28]_i_4__0_n_0 ;
  wire \clk_count[28]_i_5__0_n_0 ;
  wire \clk_count[4]_i_2__0_n_0 ;
  wire \clk_count[4]_i_3__0_n_0 ;
  wire \clk_count[4]_i_4__0_n_0 ;
  wire \clk_count[4]_i_5__0_n_0 ;
  wire \clk_count[8]_i_2__0_n_0 ;
  wire \clk_count[8]_i_3__0_n_0 ;
  wire \clk_count[8]_i_4__0_n_0 ;
  wire \clk_count[8]_i_5__0_n_0 ;
  wire [31:0]clk_count_reg;
  wire \clk_count_reg[0]_i_2__0_n_0 ;
  wire \clk_count_reg[0]_i_2__0_n_1 ;
  wire \clk_count_reg[0]_i_2__0_n_2 ;
  wire \clk_count_reg[0]_i_2__0_n_3 ;
  wire \clk_count_reg[0]_i_2__0_n_4 ;
  wire \clk_count_reg[0]_i_2__0_n_5 ;
  wire \clk_count_reg[0]_i_2__0_n_6 ;
  wire \clk_count_reg[0]_i_2__0_n_7 ;
  wire \clk_count_reg[12]_i_1__0_n_0 ;
  wire \clk_count_reg[12]_i_1__0_n_1 ;
  wire \clk_count_reg[12]_i_1__0_n_2 ;
  wire \clk_count_reg[12]_i_1__0_n_3 ;
  wire \clk_count_reg[12]_i_1__0_n_4 ;
  wire \clk_count_reg[12]_i_1__0_n_5 ;
  wire \clk_count_reg[12]_i_1__0_n_6 ;
  wire \clk_count_reg[12]_i_1__0_n_7 ;
  wire \clk_count_reg[16]_i_1__0_n_0 ;
  wire \clk_count_reg[16]_i_1__0_n_1 ;
  wire \clk_count_reg[16]_i_1__0_n_2 ;
  wire \clk_count_reg[16]_i_1__0_n_3 ;
  wire \clk_count_reg[16]_i_1__0_n_4 ;
  wire \clk_count_reg[16]_i_1__0_n_5 ;
  wire \clk_count_reg[16]_i_1__0_n_6 ;
  wire \clk_count_reg[16]_i_1__0_n_7 ;
  wire \clk_count_reg[20]_i_1__0_n_0 ;
  wire \clk_count_reg[20]_i_1__0_n_1 ;
  wire \clk_count_reg[20]_i_1__0_n_2 ;
  wire \clk_count_reg[20]_i_1__0_n_3 ;
  wire \clk_count_reg[20]_i_1__0_n_4 ;
  wire \clk_count_reg[20]_i_1__0_n_5 ;
  wire \clk_count_reg[20]_i_1__0_n_6 ;
  wire \clk_count_reg[20]_i_1__0_n_7 ;
  wire \clk_count_reg[24]_i_1__0_n_0 ;
  wire \clk_count_reg[24]_i_1__0_n_1 ;
  wire \clk_count_reg[24]_i_1__0_n_2 ;
  wire \clk_count_reg[24]_i_1__0_n_3 ;
  wire \clk_count_reg[24]_i_1__0_n_4 ;
  wire \clk_count_reg[24]_i_1__0_n_5 ;
  wire \clk_count_reg[24]_i_1__0_n_6 ;
  wire \clk_count_reg[24]_i_1__0_n_7 ;
  wire \clk_count_reg[28]_i_1__0_n_1 ;
  wire \clk_count_reg[28]_i_1__0_n_2 ;
  wire \clk_count_reg[28]_i_1__0_n_3 ;
  wire \clk_count_reg[28]_i_1__0_n_4 ;
  wire \clk_count_reg[28]_i_1__0_n_5 ;
  wire \clk_count_reg[28]_i_1__0_n_6 ;
  wire \clk_count_reg[28]_i_1__0_n_7 ;
  wire \clk_count_reg[4]_i_1__0_n_0 ;
  wire \clk_count_reg[4]_i_1__0_n_1 ;
  wire \clk_count_reg[4]_i_1__0_n_2 ;
  wire \clk_count_reg[4]_i_1__0_n_3 ;
  wire \clk_count_reg[4]_i_1__0_n_4 ;
  wire \clk_count_reg[4]_i_1__0_n_5 ;
  wire \clk_count_reg[4]_i_1__0_n_6 ;
  wire \clk_count_reg[4]_i_1__0_n_7 ;
  wire \clk_count_reg[8]_i_1__0_n_0 ;
  wire \clk_count_reg[8]_i_1__0_n_1 ;
  wire \clk_count_reg[8]_i_1__0_n_2 ;
  wire \clk_count_reg[8]_i_1__0_n_3 ;
  wire \clk_count_reg[8]_i_1__0_n_4 ;
  wire \clk_count_reg[8]_i_1__0_n_5 ;
  wire \clk_count_reg[8]_i_1__0_n_6 ;
  wire \clk_count_reg[8]_i_1__0_n_7 ;
  wire done_i_1__0_n_0;
  wire done_i_2__0_n_0;
  wire done_i_3__0_n_0;
  wire done_i_4__0_n_0;
  wire rst_IBUF;
  wire save_btn_IBUF;
  wire [1:0]state;
  wire t;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFB00FBC0)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(t),
        .I2(state[0]),
        .I3(state[1]),
        .I4(save_btn_IBUF),
        .O(clear_reg));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFF000400)) 
    btn_db_i_1__0
       (.I0(state[1]),
        .I1(t),
        .I2(save_btn_IBUF),
        .I3(state[0]),
        .I4(CLK),
        .O(\FSM_sequential_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFD111111)) 
    clear_i_1__0
       (.I0(save_btn_IBUF),
        .I1(state[1]),
        .I2(t),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(state[0]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_10__0 
       (.I0(clk_count_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_10__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_count[0]_i_11__0 
       (.I0(clk_count_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_12__0 
       (.I0(clk_count_reg[10]),
        .I1(clk_count_reg[11]),
        .I2(clk_count_reg[8]),
        .I3(clk_count_reg[9]),
        .O(\clk_count[0]_i_12__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_13__0 
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(clk_count_reg[3]),
        .I2(clk_count_reg[0]),
        .I3(clk_count_reg[1]),
        .O(\clk_count[0]_i_13__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_14__0 
       (.I0(clk_count_reg[26]),
        .I1(clk_count_reg[27]),
        .I2(clk_count_reg[24]),
        .I3(clk_count_reg[25]),
        .O(\clk_count[0]_i_14__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_15__0 
       (.I0(clk_count_reg[18]),
        .I1(clk_count_reg[19]),
        .I2(clk_count_reg[16]),
        .I3(clk_count_reg[17]),
        .O(\clk_count[0]_i_15__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \clk_count[0]_i_1__0 
       (.I0(clk_count_reg[6]),
        .I1(\clk_count[0]_i_3__0_n_0 ),
        .I2(\clk_count[0]_i_4__0_n_0 ),
        .I3(\clk_count[0]_i_5__0_n_0 ),
        .I4(\clk_count[0]_i_6__0_n_0 ),
        .O(\clk_count[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_count[0]_i_3__0 
       (.I0(clk_count_reg[13]),
        .I1(clk_count_reg[12]),
        .I2(clk_count_reg[15]),
        .I3(clk_count_reg[14]),
        .I4(\clk_count[0]_i_12__0_n_0 ),
        .O(\clk_count[0]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_count[0]_i_4__0 
       (.I0(clk_count_reg[30]),
        .I1(clk_count_reg[4]),
        .I2(clk_count_reg[7]),
        .I3(clk_count_reg[29]),
        .I4(\clk_count[0]_i_13__0_n_0 ),
        .O(\clk_count[0]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \clk_count[0]_i_5__0 
       (.I0(clk_count_reg[31]),
        .I1(clk_count_reg[28]),
        .I2(clk_count_reg[2]),
        .I3(clk_count_reg[5]),
        .I4(\clk_count[0]_i_14__0_n_0 ),
        .O(\clk_count[0]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_count[0]_i_6__0 
       (.I0(clk_count_reg[21]),
        .I1(clk_count_reg[20]),
        .I2(clk_count_reg[23]),
        .I3(clk_count_reg[22]),
        .I4(\clk_count[0]_i_15__0_n_0 ),
        .O(\clk_count[0]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_7__0 
       (.I0(clk_count_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_8__0 
       (.I0(clk_count_reg[3]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_9__0 
       (.I0(clk_count_reg[2]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_2__0 
       (.I0(clk_count_reg[15]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_3__0 
       (.I0(clk_count_reg[14]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_4__0 
       (.I0(clk_count_reg[13]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_5__0 
       (.I0(clk_count_reg[12]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[12]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_2__0 
       (.I0(clk_count_reg[19]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[16]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_3__0 
       (.I0(clk_count_reg[18]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[16]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_4__0 
       (.I0(clk_count_reg[17]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[16]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_5__0 
       (.I0(clk_count_reg[16]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[16]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_2__0 
       (.I0(clk_count_reg[23]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[20]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_3__0 
       (.I0(clk_count_reg[22]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[20]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_4__0 
       (.I0(clk_count_reg[21]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[20]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_5__0 
       (.I0(clk_count_reg[20]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[20]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_2__0 
       (.I0(clk_count_reg[27]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[24]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_3__0 
       (.I0(clk_count_reg[26]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[24]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_4__0 
       (.I0(clk_count_reg[25]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[24]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_5__0 
       (.I0(clk_count_reg[24]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[24]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_2__0 
       (.I0(clk_count_reg[31]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[28]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_3__0 
       (.I0(clk_count_reg[30]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[28]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_4__0 
       (.I0(clk_count_reg[29]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[28]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_5__0 
       (.I0(clk_count_reg[28]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[28]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_2__0 
       (.I0(clk_count_reg[7]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_3__0 
       (.I0(clk_count_reg[6]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_4__0 
       (.I0(clk_count_reg[5]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_5__0 
       (.I0(clk_count_reg[4]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_2__0 
       (.I0(clk_count_reg[11]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_3__0 
       (.I0(clk_count_reg[10]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_4__0 
       (.I0(clk_count_reg[9]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_5__0 
       (.I0(clk_count_reg[8]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[8]_i_5__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2__0_n_7 ),
        .Q(clk_count_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[0]_i_2__0 
       (.CI(\<const0> ),
        .CO({\clk_count_reg[0]_i_2__0_n_0 ,\clk_count_reg[0]_i_2__0_n_1 ,\clk_count_reg[0]_i_2__0_n_2 ,\clk_count_reg[0]_i_2__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\clk_count[0]_i_7__0_n_0 }),
        .O({\clk_count_reg[0]_i_2__0_n_4 ,\clk_count_reg[0]_i_2__0_n_5 ,\clk_count_reg[0]_i_2__0_n_6 ,\clk_count_reg[0]_i_2__0_n_7 }),
        .S({\clk_count[0]_i_8__0_n_0 ,\clk_count[0]_i_9__0_n_0 ,\clk_count[0]_i_10__0_n_0 ,\clk_count[0]_i_11__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1__0_n_5 ),
        .Q(clk_count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1__0_n_4 ),
        .Q(clk_count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1__0_n_7 ),
        .Q(clk_count_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[12]_i_1__0 
       (.CI(\clk_count_reg[8]_i_1__0_n_0 ),
        .CO({\clk_count_reg[12]_i_1__0_n_0 ,\clk_count_reg[12]_i_1__0_n_1 ,\clk_count_reg[12]_i_1__0_n_2 ,\clk_count_reg[12]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[12]_i_1__0_n_4 ,\clk_count_reg[12]_i_1__0_n_5 ,\clk_count_reg[12]_i_1__0_n_6 ,\clk_count_reg[12]_i_1__0_n_7 }),
        .S({\clk_count[12]_i_2__0_n_0 ,\clk_count[12]_i_3__0_n_0 ,\clk_count[12]_i_4__0_n_0 ,\clk_count[12]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1__0_n_6 ),
        .Q(clk_count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1__0_n_5 ),
        .Q(clk_count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1__0_n_4 ),
        .Q(clk_count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1__0_n_7 ),
        .Q(clk_count_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[16]_i_1__0 
       (.CI(\clk_count_reg[12]_i_1__0_n_0 ),
        .CO({\clk_count_reg[16]_i_1__0_n_0 ,\clk_count_reg[16]_i_1__0_n_1 ,\clk_count_reg[16]_i_1__0_n_2 ,\clk_count_reg[16]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[16]_i_1__0_n_4 ,\clk_count_reg[16]_i_1__0_n_5 ,\clk_count_reg[16]_i_1__0_n_6 ,\clk_count_reg[16]_i_1__0_n_7 }),
        .S({\clk_count[16]_i_2__0_n_0 ,\clk_count[16]_i_3__0_n_0 ,\clk_count[16]_i_4__0_n_0 ,\clk_count[16]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1__0_n_6 ),
        .Q(clk_count_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1__0_n_5 ),
        .Q(clk_count_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1__0_n_4 ),
        .Q(clk_count_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2__0_n_6 ),
        .Q(clk_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1__0_n_7 ),
        .Q(clk_count_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[20]_i_1__0 
       (.CI(\clk_count_reg[16]_i_1__0_n_0 ),
        .CO({\clk_count_reg[20]_i_1__0_n_0 ,\clk_count_reg[20]_i_1__0_n_1 ,\clk_count_reg[20]_i_1__0_n_2 ,\clk_count_reg[20]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[20]_i_1__0_n_4 ,\clk_count_reg[20]_i_1__0_n_5 ,\clk_count_reg[20]_i_1__0_n_6 ,\clk_count_reg[20]_i_1__0_n_7 }),
        .S({\clk_count[20]_i_2__0_n_0 ,\clk_count[20]_i_3__0_n_0 ,\clk_count[20]_i_4__0_n_0 ,\clk_count[20]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1__0_n_6 ),
        .Q(clk_count_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1__0_n_5 ),
        .Q(clk_count_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1__0_n_4 ),
        .Q(clk_count_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1__0_n_7 ),
        .Q(clk_count_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[24]_i_1__0 
       (.CI(\clk_count_reg[20]_i_1__0_n_0 ),
        .CO({\clk_count_reg[24]_i_1__0_n_0 ,\clk_count_reg[24]_i_1__0_n_1 ,\clk_count_reg[24]_i_1__0_n_2 ,\clk_count_reg[24]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[24]_i_1__0_n_4 ,\clk_count_reg[24]_i_1__0_n_5 ,\clk_count_reg[24]_i_1__0_n_6 ,\clk_count_reg[24]_i_1__0_n_7 }),
        .S({\clk_count[24]_i_2__0_n_0 ,\clk_count[24]_i_3__0_n_0 ,\clk_count[24]_i_4__0_n_0 ,\clk_count[24]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1__0_n_6 ),
        .Q(clk_count_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1__0_n_5 ),
        .Q(clk_count_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1__0_n_4 ),
        .Q(clk_count_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1__0_n_7 ),
        .Q(clk_count_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[28]_i_1__0 
       (.CI(\clk_count_reg[24]_i_1__0_n_0 ),
        .CO({\clk_count_reg[28]_i_1__0_n_1 ,\clk_count_reg[28]_i_1__0_n_2 ,\clk_count_reg[28]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[28]_i_1__0_n_4 ,\clk_count_reg[28]_i_1__0_n_5 ,\clk_count_reg[28]_i_1__0_n_6 ,\clk_count_reg[28]_i_1__0_n_7 }),
        .S({\clk_count[28]_i_2__0_n_0 ,\clk_count[28]_i_3__0_n_0 ,\clk_count[28]_i_4__0_n_0 ,\clk_count[28]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1__0_n_6 ),
        .Q(clk_count_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2__0_n_5 ),
        .Q(clk_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1__0_n_5 ),
        .Q(clk_count_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1__0_n_4 ),
        .Q(clk_count_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2__0_n_4 ),
        .Q(clk_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1__0_n_7 ),
        .Q(clk_count_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[4]_i_1__0 
       (.CI(\clk_count_reg[0]_i_2__0_n_0 ),
        .CO({\clk_count_reg[4]_i_1__0_n_0 ,\clk_count_reg[4]_i_1__0_n_1 ,\clk_count_reg[4]_i_1__0_n_2 ,\clk_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[4]_i_1__0_n_4 ,\clk_count_reg[4]_i_1__0_n_5 ,\clk_count_reg[4]_i_1__0_n_6 ,\clk_count_reg[4]_i_1__0_n_7 }),
        .S({\clk_count[4]_i_2__0_n_0 ,\clk_count[4]_i_3__0_n_0 ,\clk_count[4]_i_4__0_n_0 ,\clk_count[4]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1__0_n_6 ),
        .Q(clk_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1__0_n_5 ),
        .Q(clk_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1__0_n_4 ),
        .Q(clk_count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1__0_n_7 ),
        .Q(clk_count_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[8]_i_1__0 
       (.CI(\clk_count_reg[4]_i_1__0_n_0 ),
        .CO({\clk_count_reg[8]_i_1__0_n_0 ,\clk_count_reg[8]_i_1__0_n_1 ,\clk_count_reg[8]_i_1__0_n_2 ,\clk_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[8]_i_1__0_n_4 ,\clk_count_reg[8]_i_1__0_n_5 ,\clk_count_reg[8]_i_1__0_n_6 ,\clk_count_reg[8]_i_1__0_n_7 }),
        .S({\clk_count[8]_i_2__0_n_0 ,\clk_count[8]_i_3__0_n_0 ,\clk_count[8]_i_4__0_n_0 ,\clk_count[8]_i_5__0_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1__0_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1__0_n_6 ),
        .Q(clk_count_reg[9]));
  LUT6 #(
    .INIT(64'h5555555500000001)) 
    done_i_1__0
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(\clk_count[0]_i_3__0_n_0 ),
        .I2(done_i_2__0_n_0),
        .I3(done_i_3__0_n_0),
        .I4(\clk_count[0]_i_6__0_n_0 ),
        .I5(t),
        .O(done_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    done_i_2__0
       (.I0(clk_count_reg[0]),
        .I1(clk_count_reg[4]),
        .I2(clk_count_reg[7]),
        .I3(clk_count_reg[1]),
        .I4(done_i_4__0_n_0),
        .O(done_i_2__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    done_i_3__0
       (.I0(clk_count_reg[29]),
        .I1(clk_count_reg[28]),
        .I2(clk_count_reg[30]),
        .I3(clk_count_reg[31]),
        .I4(\clk_count[0]_i_14__0_n_0 ),
        .O(done_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    done_i_4__0
       (.I0(clk_count_reg[6]),
        .I1(clk_count_reg[3]),
        .I2(clk_count_reg[5]),
        .I3(clk_count_reg[2]),
        .O(done_i_4__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(done_i_1__0_n_0),
        .Q(t));
endmodule

(* ORIG_REF_NAME = "tcounter" *) 
module tcounter_3
   (\FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    clear_reg,
    clk_IBUF_BUFG,
    rst_IBUF,
    \FSM_sequential_state_reg[1]_1 ,
    load_btn_IBUF,
    state,
    btn_db_reg);
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output clear_reg;
  input clk_IBUF_BUFG;
  input rst_IBUF;
  input \FSM_sequential_state_reg[1]_1 ;
  input load_btn_IBUF;
  input [1:0]state;
  input btn_db_reg;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire btn_db_reg;
  wire clear_reg;
  wire clk_IBUF_BUFG;
  wire \clk_count[0]_i_10_n_0 ;
  wire \clk_count[0]_i_11_n_0 ;
  wire \clk_count[0]_i_12_n_0 ;
  wire \clk_count[0]_i_13_n_0 ;
  wire \clk_count[0]_i_14_n_0 ;
  wire \clk_count[0]_i_15_n_0 ;
  wire \clk_count[0]_i_1_n_0 ;
  wire \clk_count[0]_i_3_n_0 ;
  wire \clk_count[0]_i_4_n_0 ;
  wire \clk_count[0]_i_5_n_0 ;
  wire \clk_count[0]_i_6_n_0 ;
  wire \clk_count[0]_i_7_n_0 ;
  wire \clk_count[0]_i_8_n_0 ;
  wire \clk_count[0]_i_9_n_0 ;
  wire \clk_count[12]_i_2_n_0 ;
  wire \clk_count[12]_i_3_n_0 ;
  wire \clk_count[12]_i_4_n_0 ;
  wire \clk_count[12]_i_5_n_0 ;
  wire \clk_count[16]_i_2_n_0 ;
  wire \clk_count[16]_i_3_n_0 ;
  wire \clk_count[16]_i_4_n_0 ;
  wire \clk_count[16]_i_5_n_0 ;
  wire \clk_count[20]_i_2_n_0 ;
  wire \clk_count[20]_i_3_n_0 ;
  wire \clk_count[20]_i_4_n_0 ;
  wire \clk_count[20]_i_5_n_0 ;
  wire \clk_count[24]_i_2_n_0 ;
  wire \clk_count[24]_i_3_n_0 ;
  wire \clk_count[24]_i_4_n_0 ;
  wire \clk_count[24]_i_5_n_0 ;
  wire \clk_count[28]_i_2_n_0 ;
  wire \clk_count[28]_i_3_n_0 ;
  wire \clk_count[28]_i_4_n_0 ;
  wire \clk_count[28]_i_5_n_0 ;
  wire \clk_count[4]_i_2_n_0 ;
  wire \clk_count[4]_i_3_n_0 ;
  wire \clk_count[4]_i_4_n_0 ;
  wire \clk_count[4]_i_5_n_0 ;
  wire \clk_count[8]_i_2_n_0 ;
  wire \clk_count[8]_i_3_n_0 ;
  wire \clk_count[8]_i_4_n_0 ;
  wire \clk_count[8]_i_5_n_0 ;
  wire [31:0]clk_count_reg;
  wire \clk_count_reg[0]_i_2_n_0 ;
  wire \clk_count_reg[0]_i_2_n_1 ;
  wire \clk_count_reg[0]_i_2_n_2 ;
  wire \clk_count_reg[0]_i_2_n_3 ;
  wire \clk_count_reg[0]_i_2_n_4 ;
  wire \clk_count_reg[0]_i_2_n_5 ;
  wire \clk_count_reg[0]_i_2_n_6 ;
  wire \clk_count_reg[0]_i_2_n_7 ;
  wire \clk_count_reg[12]_i_1_n_0 ;
  wire \clk_count_reg[12]_i_1_n_1 ;
  wire \clk_count_reg[12]_i_1_n_2 ;
  wire \clk_count_reg[12]_i_1_n_3 ;
  wire \clk_count_reg[12]_i_1_n_4 ;
  wire \clk_count_reg[12]_i_1_n_5 ;
  wire \clk_count_reg[12]_i_1_n_6 ;
  wire \clk_count_reg[12]_i_1_n_7 ;
  wire \clk_count_reg[16]_i_1_n_0 ;
  wire \clk_count_reg[16]_i_1_n_1 ;
  wire \clk_count_reg[16]_i_1_n_2 ;
  wire \clk_count_reg[16]_i_1_n_3 ;
  wire \clk_count_reg[16]_i_1_n_4 ;
  wire \clk_count_reg[16]_i_1_n_5 ;
  wire \clk_count_reg[16]_i_1_n_6 ;
  wire \clk_count_reg[16]_i_1_n_7 ;
  wire \clk_count_reg[20]_i_1_n_0 ;
  wire \clk_count_reg[20]_i_1_n_1 ;
  wire \clk_count_reg[20]_i_1_n_2 ;
  wire \clk_count_reg[20]_i_1_n_3 ;
  wire \clk_count_reg[20]_i_1_n_4 ;
  wire \clk_count_reg[20]_i_1_n_5 ;
  wire \clk_count_reg[20]_i_1_n_6 ;
  wire \clk_count_reg[20]_i_1_n_7 ;
  wire \clk_count_reg[24]_i_1_n_0 ;
  wire \clk_count_reg[24]_i_1_n_1 ;
  wire \clk_count_reg[24]_i_1_n_2 ;
  wire \clk_count_reg[24]_i_1_n_3 ;
  wire \clk_count_reg[24]_i_1_n_4 ;
  wire \clk_count_reg[24]_i_1_n_5 ;
  wire \clk_count_reg[24]_i_1_n_6 ;
  wire \clk_count_reg[24]_i_1_n_7 ;
  wire \clk_count_reg[28]_i_1_n_1 ;
  wire \clk_count_reg[28]_i_1_n_2 ;
  wire \clk_count_reg[28]_i_1_n_3 ;
  wire \clk_count_reg[28]_i_1_n_4 ;
  wire \clk_count_reg[28]_i_1_n_5 ;
  wire \clk_count_reg[28]_i_1_n_6 ;
  wire \clk_count_reg[28]_i_1_n_7 ;
  wire \clk_count_reg[4]_i_1_n_0 ;
  wire \clk_count_reg[4]_i_1_n_1 ;
  wire \clk_count_reg[4]_i_1_n_2 ;
  wire \clk_count_reg[4]_i_1_n_3 ;
  wire \clk_count_reg[4]_i_1_n_4 ;
  wire \clk_count_reg[4]_i_1_n_5 ;
  wire \clk_count_reg[4]_i_1_n_6 ;
  wire \clk_count_reg[4]_i_1_n_7 ;
  wire \clk_count_reg[8]_i_1_n_0 ;
  wire \clk_count_reg[8]_i_1_n_1 ;
  wire \clk_count_reg[8]_i_1_n_2 ;
  wire \clk_count_reg[8]_i_1_n_3 ;
  wire \clk_count_reg[8]_i_1_n_4 ;
  wire \clk_count_reg[8]_i_1_n_5 ;
  wire \clk_count_reg[8]_i_1_n_6 ;
  wire \clk_count_reg[8]_i_1_n_7 ;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_i_4_n_0;
  wire load_btn_IBUF;
  wire rst_IBUF;
  wire [1:0]state;
  wire t;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFB00FBC0)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(t),
        .I2(state[0]),
        .I3(state[1]),
        .I4(load_btn_IBUF),
        .O(clear_reg));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT5 #(
    .INIT(32'hFF000400)) 
    btn_db_i_1
       (.I0(state[1]),
        .I1(t),
        .I2(load_btn_IBUF),
        .I3(state[0]),
        .I4(btn_db_reg),
        .O(\FSM_sequential_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFD111111)) 
    clear_i_1
       (.I0(load_btn_IBUF),
        .I1(state[1]),
        .I2(t),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(state[0]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \clk_count[0]_i_1 
       (.I0(clk_count_reg[6]),
        .I1(\clk_count[0]_i_3_n_0 ),
        .I2(\clk_count[0]_i_4_n_0 ),
        .I3(\clk_count[0]_i_5_n_0 ),
        .I4(\clk_count[0]_i_6_n_0 ),
        .O(\clk_count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_10 
       (.I0(clk_count_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_count[0]_i_11 
       (.I0(clk_count_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_12 
       (.I0(clk_count_reg[10]),
        .I1(clk_count_reg[11]),
        .I2(clk_count_reg[8]),
        .I3(clk_count_reg[9]),
        .O(\clk_count[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_13 
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(clk_count_reg[3]),
        .I2(clk_count_reg[0]),
        .I3(clk_count_reg[1]),
        .O(\clk_count[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_14 
       (.I0(clk_count_reg[26]),
        .I1(clk_count_reg[27]),
        .I2(clk_count_reg[24]),
        .I3(clk_count_reg[25]),
        .O(\clk_count[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \clk_count[0]_i_15 
       (.I0(clk_count_reg[18]),
        .I1(clk_count_reg[19]),
        .I2(clk_count_reg[16]),
        .I3(clk_count_reg[17]),
        .O(\clk_count[0]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_count[0]_i_3 
       (.I0(clk_count_reg[13]),
        .I1(clk_count_reg[12]),
        .I2(clk_count_reg[15]),
        .I3(clk_count_reg[14]),
        .I4(\clk_count[0]_i_12_n_0 ),
        .O(\clk_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_count[0]_i_4 
       (.I0(clk_count_reg[30]),
        .I1(clk_count_reg[4]),
        .I2(clk_count_reg[7]),
        .I3(clk_count_reg[29]),
        .I4(\clk_count[0]_i_13_n_0 ),
        .O(\clk_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \clk_count[0]_i_5 
       (.I0(clk_count_reg[31]),
        .I1(clk_count_reg[28]),
        .I2(clk_count_reg[2]),
        .I3(clk_count_reg[5]),
        .I4(\clk_count[0]_i_14_n_0 ),
        .O(\clk_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \clk_count[0]_i_6 
       (.I0(clk_count_reg[21]),
        .I1(clk_count_reg[20]),
        .I2(clk_count_reg[23]),
        .I3(clk_count_reg[22]),
        .I4(\clk_count[0]_i_15_n_0 ),
        .O(\clk_count[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_7 
       (.I0(clk_count_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_8 
       (.I0(clk_count_reg[3]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[0]_i_9 
       (.I0(clk_count_reg[2]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_2 
       (.I0(clk_count_reg[15]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_3 
       (.I0(clk_count_reg[14]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_4 
       (.I0(clk_count_reg[13]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[12]_i_5 
       (.I0(clk_count_reg[12]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_2 
       (.I0(clk_count_reg[19]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_3 
       (.I0(clk_count_reg[18]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_4 
       (.I0(clk_count_reg[17]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[16]_i_5 
       (.I0(clk_count_reg[16]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_2 
       (.I0(clk_count_reg[23]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_3 
       (.I0(clk_count_reg[22]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_4 
       (.I0(clk_count_reg[21]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[20]_i_5 
       (.I0(clk_count_reg[20]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_2 
       (.I0(clk_count_reg[27]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_3 
       (.I0(clk_count_reg[26]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_4 
       (.I0(clk_count_reg[25]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[24]_i_5 
       (.I0(clk_count_reg[24]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_2 
       (.I0(clk_count_reg[31]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_3 
       (.I0(clk_count_reg[30]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_4 
       (.I0(clk_count_reg[29]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[28]_i_5 
       (.I0(clk_count_reg[28]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_2 
       (.I0(clk_count_reg[7]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_3 
       (.I0(clk_count_reg[6]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_4 
       (.I0(clk_count_reg[5]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[4]_i_5 
       (.I0(clk_count_reg[4]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_2 
       (.I0(clk_count_reg[11]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_3 
       (.I0(clk_count_reg[10]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_4 
       (.I0(clk_count_reg[9]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clk_count[8]_i_5 
       (.I0(clk_count_reg[8]),
        .I1(\FSM_sequential_state_reg[1]_1 ),
        .O(\clk_count[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_7 ),
        .Q(clk_count_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\clk_count_reg[0]_i_2_n_0 ,\clk_count_reg[0]_i_2_n_1 ,\clk_count_reg[0]_i_2_n_2 ,\clk_count_reg[0]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\clk_count[0]_i_7_n_0 }),
        .O({\clk_count_reg[0]_i_2_n_4 ,\clk_count_reg[0]_i_2_n_5 ,\clk_count_reg[0]_i_2_n_6 ,\clk_count_reg[0]_i_2_n_7 }),
        .S({\clk_count[0]_i_8_n_0 ,\clk_count[0]_i_9_n_0 ,\clk_count[0]_i_10_n_0 ,\clk_count[0]_i_11_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_5 ),
        .Q(clk_count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_4 ),
        .Q(clk_count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_7 ),
        .Q(clk_count_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[12]_i_1 
       (.CI(\clk_count_reg[8]_i_1_n_0 ),
        .CO({\clk_count_reg[12]_i_1_n_0 ,\clk_count_reg[12]_i_1_n_1 ,\clk_count_reg[12]_i_1_n_2 ,\clk_count_reg[12]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[12]_i_1_n_4 ,\clk_count_reg[12]_i_1_n_5 ,\clk_count_reg[12]_i_1_n_6 ,\clk_count_reg[12]_i_1_n_7 }),
        .S({\clk_count[12]_i_2_n_0 ,\clk_count[12]_i_3_n_0 ,\clk_count[12]_i_4_n_0 ,\clk_count[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_6 ),
        .Q(clk_count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_5 ),
        .Q(clk_count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[12]_i_1_n_4 ),
        .Q(clk_count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_7 ),
        .Q(clk_count_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[16]_i_1 
       (.CI(\clk_count_reg[12]_i_1_n_0 ),
        .CO({\clk_count_reg[16]_i_1_n_0 ,\clk_count_reg[16]_i_1_n_1 ,\clk_count_reg[16]_i_1_n_2 ,\clk_count_reg[16]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[16]_i_1_n_4 ,\clk_count_reg[16]_i_1_n_5 ,\clk_count_reg[16]_i_1_n_6 ,\clk_count_reg[16]_i_1_n_7 }),
        .S({\clk_count[16]_i_2_n_0 ,\clk_count[16]_i_3_n_0 ,\clk_count[16]_i_4_n_0 ,\clk_count[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_6 ),
        .Q(clk_count_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_5 ),
        .Q(clk_count_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[16]_i_1_n_4 ),
        .Q(clk_count_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_6 ),
        .Q(clk_count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_7 ),
        .Q(clk_count_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[20]_i_1 
       (.CI(\clk_count_reg[16]_i_1_n_0 ),
        .CO({\clk_count_reg[20]_i_1_n_0 ,\clk_count_reg[20]_i_1_n_1 ,\clk_count_reg[20]_i_1_n_2 ,\clk_count_reg[20]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[20]_i_1_n_4 ,\clk_count_reg[20]_i_1_n_5 ,\clk_count_reg[20]_i_1_n_6 ,\clk_count_reg[20]_i_1_n_7 }),
        .S({\clk_count[20]_i_2_n_0 ,\clk_count[20]_i_3_n_0 ,\clk_count[20]_i_4_n_0 ,\clk_count[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_6 ),
        .Q(clk_count_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_5 ),
        .Q(clk_count_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[20]_i_1_n_4 ),
        .Q(clk_count_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_7 ),
        .Q(clk_count_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[24]_i_1 
       (.CI(\clk_count_reg[20]_i_1_n_0 ),
        .CO({\clk_count_reg[24]_i_1_n_0 ,\clk_count_reg[24]_i_1_n_1 ,\clk_count_reg[24]_i_1_n_2 ,\clk_count_reg[24]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[24]_i_1_n_4 ,\clk_count_reg[24]_i_1_n_5 ,\clk_count_reg[24]_i_1_n_6 ,\clk_count_reg[24]_i_1_n_7 }),
        .S({\clk_count[24]_i_2_n_0 ,\clk_count[24]_i_3_n_0 ,\clk_count[24]_i_4_n_0 ,\clk_count[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_6 ),
        .Q(clk_count_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_5 ),
        .Q(clk_count_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[24]_i_1_n_4 ),
        .Q(clk_count_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_7 ),
        .Q(clk_count_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[28]_i_1 
       (.CI(\clk_count_reg[24]_i_1_n_0 ),
        .CO({\clk_count_reg[28]_i_1_n_1 ,\clk_count_reg[28]_i_1_n_2 ,\clk_count_reg[28]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[28]_i_1_n_4 ,\clk_count_reg[28]_i_1_n_5 ,\clk_count_reg[28]_i_1_n_6 ,\clk_count_reg[28]_i_1_n_7 }),
        .S({\clk_count[28]_i_2_n_0 ,\clk_count[28]_i_3_n_0 ,\clk_count[28]_i_4_n_0 ,\clk_count[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_6 ),
        .Q(clk_count_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_5 ),
        .Q(clk_count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_5 ),
        .Q(clk_count_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[28]_i_1_n_4 ),
        .Q(clk_count_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[0]_i_2_n_4 ),
        .Q(clk_count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_7 ),
        .Q(clk_count_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[4]_i_1 
       (.CI(\clk_count_reg[0]_i_2_n_0 ),
        .CO({\clk_count_reg[4]_i_1_n_0 ,\clk_count_reg[4]_i_1_n_1 ,\clk_count_reg[4]_i_1_n_2 ,\clk_count_reg[4]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[4]_i_1_n_4 ,\clk_count_reg[4]_i_1_n_5 ,\clk_count_reg[4]_i_1_n_6 ,\clk_count_reg[4]_i_1_n_7 }),
        .S({\clk_count[4]_i_2_n_0 ,\clk_count[4]_i_3_n_0 ,\clk_count[4]_i_4_n_0 ,\clk_count[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_6 ),
        .Q(clk_count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_5 ),
        .Q(clk_count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[4]_i_1_n_4 ),
        .Q(clk_count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_7 ),
        .Q(clk_count_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_count_reg[8]_i_1 
       (.CI(\clk_count_reg[4]_i_1_n_0 ),
        .CO({\clk_count_reg[8]_i_1_n_0 ,\clk_count_reg[8]_i_1_n_1 ,\clk_count_reg[8]_i_1_n_2 ,\clk_count_reg[8]_i_1_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\clk_count_reg[8]_i_1_n_4 ,\clk_count_reg[8]_i_1_n_5 ,\clk_count_reg[8]_i_1_n_6 ,\clk_count_reg[8]_i_1_n_7 }),
        .S({\clk_count[8]_i_2_n_0 ,\clk_count[8]_i_3_n_0 ,\clk_count[8]_i_4_n_0 ,\clk_count[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \clk_count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_count[0]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\clk_count_reg[8]_i_1_n_6 ),
        .Q(clk_count_reg[9]));
  LUT6 #(
    .INIT(64'h5555555500000001)) 
    done_i_1
       (.I0(\FSM_sequential_state_reg[1]_1 ),
        .I1(\clk_count[0]_i_3_n_0 ),
        .I2(done_i_2_n_0),
        .I3(done_i_3_n_0),
        .I4(\clk_count[0]_i_6_n_0 ),
        .I5(t),
        .O(done_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    done_i_2
       (.I0(clk_count_reg[0]),
        .I1(clk_count_reg[4]),
        .I2(clk_count_reg[7]),
        .I3(clk_count_reg[1]),
        .I4(done_i_4_n_0),
        .O(done_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    done_i_3
       (.I0(clk_count_reg[29]),
        .I1(clk_count_reg[28]),
        .I2(clk_count_reg[30]),
        .I3(clk_count_reg[31]),
        .I4(\clk_count[0]_i_14_n_0 ),
        .O(done_i_3_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    done_i_4
       (.I0(clk_count_reg[6]),
        .I1(clk_count_reg[3]),
        .I2(clk_count_reg[5]),
        .I3(clk_count_reg[2]),
        .O(done_i_4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .CLR(rst_IBUF),
        .D(done_i_1_n_0),
        .Q(t));
endmodule

module up_down_counter
   (overflow_OBUF,
    D,
    \q_reg[7]_0 ,
    rst_IBUF,
    clk_IBUF_BUFG,
    dn_IBUF,
    up_IBUF,
    Q,
    overflow_reg_0,
    selectsev_IBUF,
    \seg_reg[4] ,
    \seg_reg[3] ,
    \seg_reg[6] ,
    \seg_reg[2] ,
    \seg_reg[0] ,
    \seg_reg[1] ,
    \seg_reg[5] ,
    anode);
  output overflow_OBUF;
  output [6:0]D;
  output [7:0]\q_reg[7]_0 ;
  input rst_IBUF;
  input clk_IBUF_BUFG;
  input dn_IBUF;
  input up_IBUF;
  input [7:0]Q;
  input [7:0]overflow_reg_0;
  input selectsev_IBUF;
  input \seg_reg[4] ;
  input \seg_reg[3] ;
  input \seg_reg[6] ;
  input \seg_reg[2] ;
  input \seg_reg[0] ;
  input \seg_reg[1] ;
  input \seg_reg[5] ;
  input [1:0]anode;

  wire \<const0> ;
  wire [6:0]D;
  wire [7:0]Q;
  wire [1:0]anode;
  wire clk_IBUF_BUFG;
  wire dn_IBUF;
  wire overflow0_carry_i_1_n_0;
  wire overflow0_carry_i_2_n_0;
  wire overflow0_carry_i_3_n_0;
  wire overflow0_carry_i_4_n_0;
  wire overflow0_carry_i_5_n_0;
  wire overflow0_carry_i_6_n_0;
  wire overflow0_carry_i_7_n_0;
  wire overflow0_carry_i_8_n_0;
  wire overflow0_carry_n_0;
  wire overflow0_carry_n_1;
  wire overflow0_carry_n_2;
  wire overflow0_carry_n_3;
  wire overflow_OBUF;
  wire overflow_i_1_n_0;
  wire overflow_i_2_n_0;
  wire [7:0]overflow_reg_0;
  wire p_0_out;
  wire \q[3]_i_3_n_0 ;
  wire \q[3]_i_4_n_0 ;
  wire \q[3]_i_5_n_0 ;
  wire \q[3]_i_6_n_0 ;
  wire \q[7]_i_10_n_0 ;
  wire \q[7]_i_11_n_0 ;
  wire \q[7]_i_12_n_0 ;
  wire \q[7]_i_13_n_0 ;
  wire \q[7]_i_14_n_0 ;
  wire \q[7]_i_15_n_0 ;
  wire \q[7]_i_16_n_0 ;
  wire \q[7]_i_1_n_0 ;
  wire \q[7]_i_4_n_0 ;
  wire \q[7]_i_5_n_0 ;
  wire \q[7]_i_6_n_0 ;
  wire \q[7]_i_7_n_0 ;
  wire \q[7]_i_9_n_0 ;
  wire \q_reg[3]_i_1_n_0 ;
  wire \q_reg[3]_i_1_n_1 ;
  wire \q_reg[3]_i_1_n_2 ;
  wire \q_reg[3]_i_1_n_3 ;
  wire \q_reg[3]_i_1_n_4 ;
  wire \q_reg[3]_i_1_n_5 ;
  wire \q_reg[3]_i_1_n_6 ;
  wire \q_reg[3]_i_1_n_7 ;
  wire [7:0]\q_reg[7]_0 ;
  wire \q_reg[7]_i_2_n_1 ;
  wire \q_reg[7]_i_2_n_2 ;
  wire \q_reg[7]_i_2_n_3 ;
  wire \q_reg[7]_i_2_n_4 ;
  wire \q_reg[7]_i_2_n_5 ;
  wire \q_reg[7]_i_2_n_6 ;
  wire \q_reg[7]_i_2_n_7 ;
  wire \q_reg[7]_i_3_n_0 ;
  wire \q_reg[7]_i_3_n_1 ;
  wire \q_reg[7]_i_3_n_2 ;
  wire \q_reg[7]_i_3_n_3 ;
  wire \q_reg[7]_i_8_n_0 ;
  wire \q_reg[7]_i_8_n_1 ;
  wire \q_reg[7]_i_8_n_2 ;
  wire \q_reg[7]_i_8_n_3 ;
  wire rst_IBUF;
  wire \seg[6]_i_2_n_0 ;
  wire \seg[6]_i_3_n_0 ;
  wire \seg[6]_i_4_n_0 ;
  wire \seg[6]_i_5_n_0 ;
  wire \seg_reg[0] ;
  wire \seg_reg[1] ;
  wire \seg_reg[2] ;
  wire \seg_reg[3] ;
  wire \seg_reg[4] ;
  wire \seg_reg[5] ;
  wire \seg_reg[6] ;
  wire selectsev_IBUF;
  wire up_IBUF;

  GND GND
       (.G(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 overflow0_carry
       (.CI(\<const0> ),
        .CO({overflow0_carry_n_0,overflow0_carry_n_1,overflow0_carry_n_2,overflow0_carry_n_3}),
        .CYINIT(\<const0> ),
        .DI({overflow0_carry_i_1_n_0,overflow0_carry_i_2_n_0,overflow0_carry_i_3_n_0,overflow0_carry_i_4_n_0}),
        .S({overflow0_carry_i_5_n_0,overflow0_carry_i_6_n_0,overflow0_carry_i_7_n_0,overflow0_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    overflow0_carry_i_1
       (.I0(Q[6]),
        .I1(overflow_reg_0[6]),
        .I2(overflow_reg_0[7]),
        .I3(Q[7]),
        .O(overflow0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    overflow0_carry_i_2
       (.I0(Q[4]),
        .I1(overflow_reg_0[4]),
        .I2(overflow_reg_0[5]),
        .I3(Q[5]),
        .O(overflow0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    overflow0_carry_i_3
       (.I0(Q[2]),
        .I1(overflow_reg_0[2]),
        .I2(overflow_reg_0[3]),
        .I3(Q[3]),
        .O(overflow0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    overflow0_carry_i_4
       (.I0(Q[0]),
        .I1(overflow_reg_0[0]),
        .I2(overflow_reg_0[1]),
        .I3(Q[1]),
        .O(overflow0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    overflow0_carry_i_5
       (.I0(Q[6]),
        .I1(overflow_reg_0[6]),
        .I2(Q[7]),
        .I3(overflow_reg_0[7]),
        .O(overflow0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    overflow0_carry_i_6
       (.I0(Q[4]),
        .I1(overflow_reg_0[4]),
        .I2(Q[5]),
        .I3(overflow_reg_0[5]),
        .O(overflow0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    overflow0_carry_i_7
       (.I0(Q[2]),
        .I1(overflow_reg_0[2]),
        .I2(Q[3]),
        .I3(overflow_reg_0[3]),
        .O(overflow0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    overflow0_carry_i_8
       (.I0(Q[0]),
        .I1(overflow_reg_0[0]),
        .I2(Q[1]),
        .I3(overflow_reg_0[1]),
        .O(overflow0_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    overflow_i_1
       (.I0(up_IBUF),
        .I1(dn_IBUF),
        .O(overflow_i_1_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    overflow_i_2
       (.I0(\q_reg[7]_i_3_n_0 ),
        .I1(up_IBUF),
        .I2(overflow0_carry_n_0),
        .O(overflow_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    overflow_reg
       (.C(clk_IBUF_BUFG),
        .CE(overflow_i_1_n_0),
        .D(overflow_i_2_n_0),
        .Q(overflow_OBUF),
        .R(rst_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \q[3]_i_2 
       (.I0(up_IBUF),
        .O(p_0_out));
  LUT3 #(
    .INIT(8'h69)) 
    \q[3]_i_3 
       (.I0(Q[3]),
        .I1(up_IBUF),
        .I2(overflow_reg_0[3]),
        .O(\q[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \q[3]_i_4 
       (.I0(Q[2]),
        .I1(up_IBUF),
        .I2(overflow_reg_0[2]),
        .O(\q[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \q[3]_i_5 
       (.I0(Q[1]),
        .I1(up_IBUF),
        .I2(overflow_reg_0[1]),
        .O(\q[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \q[3]_i_6 
       (.I0(Q[0]),
        .O(\q[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000004F4)) 
    \q[7]_i_1 
       (.I0(overflow0_carry_n_0),
        .I1(dn_IBUF),
        .I2(up_IBUF),
        .I3(\q_reg[7]_i_3_n_0 ),
        .I4(rst_IBUF),
        .O(\q[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_10 
       (.I0(Q[6]),
        .I1(overflow_reg_0[6]),
        .O(\q[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_11 
       (.I0(Q[5]),
        .I1(overflow_reg_0[5]),
        .O(\q[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_12 
       (.I0(Q[4]),
        .I1(overflow_reg_0[4]),
        .O(\q[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_13 
       (.I0(Q[3]),
        .I1(overflow_reg_0[3]),
        .O(\q[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_14 
       (.I0(Q[2]),
        .I1(overflow_reg_0[2]),
        .O(\q[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_15 
       (.I0(Q[1]),
        .I1(overflow_reg_0[1]),
        .O(\q[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_16 
       (.I0(Q[0]),
        .I1(overflow_reg_0[0]),
        .O(\q[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \q[7]_i_4 
       (.I0(Q[7]),
        .I1(up_IBUF),
        .I2(overflow_reg_0[7]),
        .O(\q[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \q[7]_i_5 
       (.I0(Q[6]),
        .I1(up_IBUF),
        .I2(overflow_reg_0[6]),
        .O(\q[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \q[7]_i_6 
       (.I0(Q[5]),
        .I1(up_IBUF),
        .I2(overflow_reg_0[5]),
        .O(\q[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \q[7]_i_7 
       (.I0(Q[4]),
        .I1(up_IBUF),
        .I2(overflow_reg_0[4]),
        .O(\q[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \q[7]_i_9 
       (.I0(Q[7]),
        .I1(overflow_reg_0[7]),
        .O(\q[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(\q_reg[3]_i_1_n_7 ),
        .Q(\q_reg[7]_0 [0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(\q_reg[3]_i_1_n_6 ),
        .Q(\q_reg[7]_0 [1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(\q_reg[3]_i_1_n_5 ),
        .Q(\q_reg[7]_0 [2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(\q_reg[3]_i_1_n_4 ),
        .Q(\q_reg[7]_0 [3]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\q_reg[3]_i_1_n_0 ,\q_reg[3]_i_1_n_1 ,\q_reg[3]_i_1_n_2 ,\q_reg[3]_i_1_n_3 }),
        .CYINIT(overflow_reg_0[0]),
        .DI({overflow_reg_0[3:1],p_0_out}),
        .O({\q_reg[3]_i_1_n_4 ,\q_reg[3]_i_1_n_5 ,\q_reg[3]_i_1_n_6 ,\q_reg[3]_i_1_n_7 }),
        .S({\q[3]_i_3_n_0 ,\q[3]_i_4_n_0 ,\q[3]_i_5_n_0 ,\q[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(\q_reg[7]_i_2_n_7 ),
        .Q(\q_reg[7]_0 [4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(\q_reg[7]_i_2_n_6 ),
        .Q(\q_reg[7]_0 [5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(\q_reg[7]_i_2_n_5 ),
        .Q(\q_reg[7]_0 [6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\q[7]_i_1_n_0 ),
        .D(\q_reg[7]_i_2_n_4 ),
        .Q(\q_reg[7]_0 [7]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_2 
       (.CI(\q_reg[3]_i_1_n_0 ),
        .CO({\q_reg[7]_i_2_n_1 ,\q_reg[7]_i_2_n_2 ,\q_reg[7]_i_2_n_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,overflow_reg_0[6:4]}),
        .O({\q_reg[7]_i_2_n_4 ,\q_reg[7]_i_2_n_5 ,\q_reg[7]_i_2_n_6 ,\q_reg[7]_i_2_n_7 }),
        .S({\q[7]_i_4_n_0 ,\q[7]_i_5_n_0 ,\q[7]_i_6_n_0 ,\q[7]_i_7_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_3 
       (.CI(\q_reg[7]_i_8_n_0 ),
        .CO({\q_reg[7]_i_3_n_0 ,\q_reg[7]_i_3_n_1 ,\q_reg[7]_i_3_n_2 ,\q_reg[7]_i_3_n_3 }),
        .CYINIT(\<const0> ),
        .DI(overflow_reg_0[7:4]),
        .S({\q[7]_i_9_n_0 ,\q[7]_i_10_n_0 ,\q[7]_i_11_n_0 ,\q[7]_i_12_n_0 }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \q_reg[7]_i_8 
       (.CI(\<const0> ),
        .CO({\q_reg[7]_i_8_n_0 ,\q_reg[7]_i_8_n_1 ,\q_reg[7]_i_8_n_2 ,\q_reg[7]_i_8_n_3 }),
        .CYINIT(\<const0> ),
        .DI(overflow_reg_0[3:0]),
        .S({\q[7]_i_13_n_0 ,\q[7]_i_14_n_0 ,\q[7]_i_15_n_0 ,\q[7]_i_16_n_0 }));
  LUT6 #(
    .INIT(64'h20800220FFFFFFFF)) 
    \seg[0]_i_1 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_3_n_0 ),
        .I2(\seg[6]_i_4_n_0 ),
        .I3(\seg[6]_i_2_n_0 ),
        .I4(\seg[6]_i_5_n_0 ),
        .I5(\seg_reg[0] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h8A802800FFFFFFFF)) 
    \seg[1]_i_1 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_3_n_0 ),
        .I2(\seg[6]_i_4_n_0 ),
        .I3(\seg[6]_i_2_n_0 ),
        .I4(\seg[6]_i_5_n_0 ),
        .I5(\seg_reg[1] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8A000008FFFFFFFF)) 
    \seg[2]_i_1 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_3_n_0 ),
        .I2(\seg[6]_i_4_n_0 ),
        .I3(\seg[6]_i_2_n_0 ),
        .I4(\seg[6]_i_5_n_0 ),
        .I5(\seg_reg[2] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h80088220FFFFFFFF)) 
    \seg[3]_i_1 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_3_n_0 ),
        .I2(\seg[6]_i_4_n_0 ),
        .I3(\seg[6]_i_2_n_0 ),
        .I4(\seg[6]_i_5_n_0 ),
        .I5(\seg_reg[3] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h0020A2A0FFFFFFFF)) 
    \seg[4]_i_1 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_3_n_0 ),
        .I2(\seg[6]_i_4_n_0 ),
        .I3(\seg[6]_i_2_n_0 ),
        .I4(\seg[6]_i_5_n_0 ),
        .I5(\seg_reg[4] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h200080A8FFFFFFFF)) 
    \seg[5]_i_1 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_3_n_0 ),
        .I2(\seg[6]_i_4_n_0 ),
        .I3(\seg[6]_i_2_n_0 ),
        .I4(\seg[6]_i_5_n_0 ),
        .I5(\seg_reg[5] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h00088202FFFFFFFF)) 
    \seg[6]_i_1 
       (.I0(selectsev_IBUF),
        .I1(\seg[6]_i_2_n_0 ),
        .I2(\seg[6]_i_3_n_0 ),
        .I3(\seg[6]_i_4_n_0 ),
        .I4(\seg[6]_i_5_n_0 ),
        .I5(\seg_reg[6] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \seg[6]_i_2 
       (.I0(\q_reg[7]_0 [2]),
        .I1(anode[0]),
        .I2(\q_reg[7]_0 [6]),
        .I3(anode[1]),
        .O(\seg[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \seg[6]_i_3 
       (.I0(\q_reg[7]_0 [1]),
        .I1(anode[0]),
        .I2(\q_reg[7]_0 [5]),
        .I3(anode[1]),
        .O(\seg[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \seg[6]_i_4 
       (.I0(\q_reg[7]_0 [0]),
        .I1(anode[0]),
        .I2(\q_reg[7]_0 [4]),
        .I3(anode[1]),
        .O(\seg[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \seg[6]_i_5 
       (.I0(\q_reg[7]_0 [3]),
        .I1(anode[0]),
        .I2(\q_reg[7]_0 [7]),
        .I3(anode[1]),
        .O(\seg[6]_i_5_n_0 ));
endmodule
