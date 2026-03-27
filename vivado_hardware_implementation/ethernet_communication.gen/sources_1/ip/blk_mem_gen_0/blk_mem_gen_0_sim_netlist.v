// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov 26 17:46:53 2025
// Host        : DESKTOP-6F9KSH9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Andrei/OneDrive/Desktop/SSC/ethernet_communication/ethernet_communication.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.698 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48384)
`pragma protect data_block
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
`pragma protect end_protected
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
