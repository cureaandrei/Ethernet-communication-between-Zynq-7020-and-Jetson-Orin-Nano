// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov 26 17:46:52 2025
// Host        : DESKTOP-6F9KSH9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_1 -prefix
//               blk_mem_gen_1_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
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
  blk_mem_gen_1_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48096)
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
