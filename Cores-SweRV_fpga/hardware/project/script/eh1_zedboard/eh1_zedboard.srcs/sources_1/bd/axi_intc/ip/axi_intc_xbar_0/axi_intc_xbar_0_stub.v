// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Sat Sep 12 23:18:58 2020
// Host        : Nimi running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/nimro/VivadoProjects/Cores-SweRV_fpga/hardware/project/script/eh1_zedboard/eh1_zedboard.srcs/sources_1/bd/axi_intc/ip/axi_intc_xbar_0/axi_intc_xbar_0_stub.v
// Design      : axi_intc_xbar_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_crossbar_v2_1_21_axi_crossbar,Vivado 2019.2" *)
module axi_intc_xbar_0(aclk, aresetn, s_axi_awid, s_axi_awaddr, 
  s_axi_awlen, s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, s_axi_awprot, 
  s_axi_awqos, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wlast, 
  s_axi_wvalid, s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_arid, 
  s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arlock, s_axi_arcache, 
  s_axi_arprot, s_axi_arqos, s_axi_arvalid, s_axi_arready, s_axi_rid, s_axi_rdata, s_axi_rresp, 
  s_axi_rlast, s_axi_rvalid, s_axi_rready, m_axi_awid, m_axi_awaddr, m_axi_awlen, m_axi_awsize, 
  m_axi_awburst, m_axi_awlock, m_axi_awcache, m_axi_awprot, m_axi_awregion, m_axi_awqos, 
  m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wlast, m_axi_wvalid, 
  m_axi_wready, m_axi_bid, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_arid, m_axi_araddr, 
  m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arlock, m_axi_arcache, m_axi_arprot, 
  m_axi_arregion, m_axi_arqos, m_axi_arvalid, m_axi_arready, m_axi_rid, m_axi_rdata, 
  m_axi_rresp, m_axi_rlast, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awid[14:0],s_axi_awaddr[95:0],s_axi_awlen[23:0],s_axi_awsize[8:0],s_axi_awburst[5:0],s_axi_awlock[2:0],s_axi_awcache[11:0],s_axi_awprot[8:0],s_axi_awqos[11:0],s_axi_awvalid[2:0],s_axi_awready[2:0],s_axi_wdata[191:0],s_axi_wstrb[23:0],s_axi_wlast[2:0],s_axi_wvalid[2:0],s_axi_wready[2:0],s_axi_bid[14:0],s_axi_bresp[5:0],s_axi_bvalid[2:0],s_axi_bready[2:0],s_axi_arid[14:0],s_axi_araddr[95:0],s_axi_arlen[23:0],s_axi_arsize[8:0],s_axi_arburst[5:0],s_axi_arlock[2:0],s_axi_arcache[11:0],s_axi_arprot[8:0],s_axi_arqos[11:0],s_axi_arvalid[2:0],s_axi_arready[2:0],s_axi_rid[14:0],s_axi_rdata[191:0],s_axi_rresp[5:0],s_axi_rlast[2:0],s_axi_rvalid[2:0],s_axi_rready[2:0],m_axi_awid[9:0],m_axi_awaddr[63:0],m_axi_awlen[15:0],m_axi_awsize[5:0],m_axi_awburst[3:0],m_axi_awlock[1:0],m_axi_awcache[7:0],m_axi_awprot[5:0],m_axi_awregion[7:0],m_axi_awqos[7:0],m_axi_awvalid[1:0],m_axi_awready[1:0],m_axi_wdata[127:0],m_axi_wstrb[15:0],m_axi_wlast[1:0],m_axi_wvalid[1:0],m_axi_wready[1:0],m_axi_bid[9:0],m_axi_bresp[3:0],m_axi_bvalid[1:0],m_axi_bready[1:0],m_axi_arid[9:0],m_axi_araddr[63:0],m_axi_arlen[15:0],m_axi_arsize[5:0],m_axi_arburst[3:0],m_axi_arlock[1:0],m_axi_arcache[7:0],m_axi_arprot[5:0],m_axi_arregion[7:0],m_axi_arqos[7:0],m_axi_arvalid[1:0],m_axi_arready[1:0],m_axi_rid[9:0],m_axi_rdata[127:0],m_axi_rresp[3:0],m_axi_rlast[1:0],m_axi_rvalid[1:0],m_axi_rready[1:0]" */;
  input aclk;
  input aresetn;
  input [14:0]s_axi_awid;
  input [95:0]s_axi_awaddr;
  input [23:0]s_axi_awlen;
  input [8:0]s_axi_awsize;
  input [5:0]s_axi_awburst;
  input [2:0]s_axi_awlock;
  input [11:0]s_axi_awcache;
  input [8:0]s_axi_awprot;
  input [11:0]s_axi_awqos;
  input [2:0]s_axi_awvalid;
  output [2:0]s_axi_awready;
  input [191:0]s_axi_wdata;
  input [23:0]s_axi_wstrb;
  input [2:0]s_axi_wlast;
  input [2:0]s_axi_wvalid;
  output [2:0]s_axi_wready;
  output [14:0]s_axi_bid;
  output [5:0]s_axi_bresp;
  output [2:0]s_axi_bvalid;
  input [2:0]s_axi_bready;
  input [14:0]s_axi_arid;
  input [95:0]s_axi_araddr;
  input [23:0]s_axi_arlen;
  input [8:0]s_axi_arsize;
  input [5:0]s_axi_arburst;
  input [2:0]s_axi_arlock;
  input [11:0]s_axi_arcache;
  input [8:0]s_axi_arprot;
  input [11:0]s_axi_arqos;
  input [2:0]s_axi_arvalid;
  output [2:0]s_axi_arready;
  output [14:0]s_axi_rid;
  output [191:0]s_axi_rdata;
  output [5:0]s_axi_rresp;
  output [2:0]s_axi_rlast;
  output [2:0]s_axi_rvalid;
  input [2:0]s_axi_rready;
  output [9:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [15:0]m_axi_awlen;
  output [5:0]m_axi_awsize;
  output [3:0]m_axi_awburst;
  output [1:0]m_axi_awlock;
  output [7:0]m_axi_awcache;
  output [5:0]m_axi_awprot;
  output [7:0]m_axi_awregion;
  output [7:0]m_axi_awqos;
  output [1:0]m_axi_awvalid;
  input [1:0]m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output [1:0]m_axi_wlast;
  output [1:0]m_axi_wvalid;
  input [1:0]m_axi_wready;
  input [9:0]m_axi_bid;
  input [3:0]m_axi_bresp;
  input [1:0]m_axi_bvalid;
  output [1:0]m_axi_bready;
  output [9:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [15:0]m_axi_arlen;
  output [5:0]m_axi_arsize;
  output [3:0]m_axi_arburst;
  output [1:0]m_axi_arlock;
  output [7:0]m_axi_arcache;
  output [5:0]m_axi_arprot;
  output [7:0]m_axi_arregion;
  output [7:0]m_axi_arqos;
  output [1:0]m_axi_arvalid;
  input [1:0]m_axi_arready;
  input [9:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [3:0]m_axi_rresp;
  input [1:0]m_axi_rlast;
  input [1:0]m_axi_rvalid;
  output [1:0]m_axi_rready;
endmodule
