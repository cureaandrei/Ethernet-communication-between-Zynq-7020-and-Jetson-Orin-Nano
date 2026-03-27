// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov 26 17:46:52 2025
// Host        : DESKTOP-6F9KSH9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_2 -prefix
//               blk_mem_gen_2_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_2
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
  blk_mem_gen_2_blk_mem_gen_v8_4_8 U0
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
yjoHeS3mj8jOw3a/EuAvTF1twqHiydhTeXpgTRJi1B1HW3quyhTwDfelemC+bBE5lPw0KdnQ9xLx
7pMtT9mldOlqEztbBNVebMhN3X4AprrfsWg+xJvsiosMEk7wl/muFvsUUhNWxlBbEDi+WrEl2WEp
lrGHJrk5PdPaOIk4MCmubzclOObWeirFNH1CSeUi8dng/MOIP69EmOV+8gfjlFMdvl/JZU442C2S
QdFglMSqkaRJnBiaui2VZW+wZLHTbNDhNgn5HLbPNCjZd1opFD2JO/CExctzXE+KNCccmUEOwvA9
BYFh2i1sBAjtr9kmiwuSvI2DUV2mIkkdZwQ5mOGKseSsA9SyzL+QyeXyNmPMNZ4C3/J7GryPkwN7
EOF8liYSiI407QyhtymOvsiK+hKfd9+yurWwCfex8EW0qbK/hcs4cEKgiVIMT+Y7fm/aPz+Y4X2I
LE+q2xt5ZH1DEkrxLCXPhD3YbcTm5Zh5iSTOFej9Q8vIrCaNmzeGEBlufEjpkpS/UUJjrKy3xIB+
fldw2TVa31MhN5NnSujI8i98VN8x68Bcg6rv78QDujUaTwBUas8s1bpvHQjyNSHt9jl/HH/kpBbz
FZAEEEpqVoH0P5USPUJBbZpeormlQp/AeYmaGxwOJIVZk9dFEitiyqh8MIJAMRWokby6CW3j8Yxk
iiMIkwOpUEAnDxZ96WOjrwnMHVGNQJKeXL+bH+2NGDopvc1F1RoGjKfrbukczUXu/n/5dHAjKfA7
qJ2Gs575wlGZ6/vjRppxR4viHeGC3c3Qlzk11IX90NOW8VyRFGFw3BFFdJZsUzwL5n+kL5Gnq+c/
fTzbyAEVZXnmgUXa/Wchbkto5XRAdxDAKmDdE2L+lvcNzo546PTeY5r5uhnH+sviYWEdf3eSNJJm
PdyX8znCpYyp3zOMuas2pwzKFxiJy0mAZhRVKWbHAp74x4j0GhHR0ko4jhs2Iot2EB3GvlGg8oFD
Bij8HiEZw9Cj1U3nKG76cJEg2tF19sf0mgLYpT1KemkGlSYaR5UXloxd4ZAe0dZ+FeiQzOm4V0nX
35Y0oPkfKlT+L/p7iHexEOEpTDd53P3tnoMjOSauwN/sC8BebRWE3SQpTYMW3YoJnoWtxf7zzYyr
9qQAoyUu8GyFsZTX47lqqLpKM26oAaQ3+YtXtzcpQn5YL6M8XmAXE3p/nXbN2Zkhi90aUyFnznSW
sz3sUcQCwe0A8FGEThJ5xHN37lK412sG17wzIrIQpePaPK5VeSmnjUK0ufRRhWsA8BelcQcTi3Tg
pswmmHykwqmxFtn7942i3VmVlCcVVW0NycvkJ+/zJUaCceDOHCeyYJr1lIwTNHvj0sFKainzuhwE
XtcmmAtp+crkpmFWkkpnlB+EmWiu1SCOH6UuREJVHiXzkn2QLPnOAnw5qfc5EOG9ptSu+RmwBcm1
gSZ12OHXlwMP0M5NxfsjB1vTSPvIrs6aS0mPqRj0N6z1qGOoVFQn8ZtliNSOKYCmWuBIB6aZSD1s
cSXX8zVxmeTW8bA09oboRLOtTFZeu5U+B+reiLJhV3KWsO4jqgYd9AxvA9sdfJbLq02wbOIYuOTO
0TGKJucdsBLY6mxAwmrMbh4/8oySgdQ+xvF+NcTjT1ONHvjUQg9pV3AGHbCjlreHuhOxriP+awqL
dMsI8E4Bia+W5iWi24V3bJ5nQjt+IoWBLKx5y7j3iG6ZUB0mqsv+FR8Uh4Sv9I1a8kvvfXqzNJju
GubAJFhjsCPr5WNgR6NCQvIdtOw2Ppf0LrOJMYgCQsq/LcJ6/mdI4gv+XGJHHEca1+FUAo/p2BMz
80onfcPmtgnFvJvR6i2ODrA8B61fXX6AjWW38mvnzzNLARiEKxvqVIHBa6v5e68kRegis9Dn3WK9
TZk63W0LackHegp4bn/VhJukpLJ46kRan4H73T5tA2s8Pzz11Xc3L9O6ZGW01vrXCq7+OaFUFA/+
2jHdLA5z6E+L4Mja5U/7UB52LcsK47Iuqg1Usmc8hxSXBrARHNWlM2QLk3524+AZD7JDqOxu1qGd
lPaTMQLdvWKl4z3YDfJycoGDhtVUCp+nw5y61EkcQZS8EIuMn6docHEhG4rUHHOuW5O7nLEqcKVs
vlIvLw3MAI70nAzlFzEN/ddJzxWF2y9JQGKKXbaL6wlQM1J0RV+xq+LTDyEZz9faNFq8F3I+zybk
t271igsbYoldmRimDLK5JXur75+6sZ8sx/IftgffXV8dDvo+CA9PGQqw3WOghon+nJ0h54uXi3NT
U0tpDYgtQQHKXNbArz2USi5IrTukjbZoCeYxrg+dEqfh7k+Fvu+DnbBJ6vTDLDb8QPOSgnA6mUL6
FT/za6TXMr2dPeF3it3AtBgzioYdqYXlhosB+pyK9CHT4G7AWqhG6V9Ylt4FJdsQM0nw6ZSeQwpT
RM+2TohX7zKGgh6qMGTYHCMWBNLwbSqXH1cVJLQEV2aEwBDFPWssqGh43pbPaIg7iADuvEUG2/4/
a+Vdnen8VH8ST8iZpkTLCNIkdasg1DpeO0/iXO0v18qjTAFXb/06I2KUkI3BZDMbXUhhtQ4pFdA1
VkUpAjjzy9/t3d75y7AFy1ZzzYrYvhFK2k70K+zF9f2saiWu+X8wKc1u0p/4KCCtOwo0A2BHUr33
icUeKKJ3RpUuMbYgv+IL5/HZvrjdULS98rpkqQR2CT1XzibSxkf4mnMzLDfYwAqHqusYsWeURKJc
1TF1OcLFXZswk2PFngoyuPRnL26/VjzrGYh8sLOrDNhZY5aMvE6rOMEAvFkPRIU95ZDAnZDoMkeA
OnApq7Qa+zzowXuO9oTo322Tk+O158DQvKUpbAAJVpFK1HPDvyhaXZxMsrHrYrqnflfFAa9uA6in
aSKegaPwnfkXWgU1/voGrXFGLRQfj4PjlSVnkrhkDDA8Lbx52aQS3160/cfSgAc5U0j7Ia8oxDZu
1UOAHU9MMuwy1udy1WNPRMuXPNryKJfxdkYyJEUJUszSQR58CAAmmV+p2/Cs2+8vMaL6fCOs5DzK
q+8S7U0SqkpREqlvjF4wcUOos5Eg/UUzQTxhbbLlnI9pDIspJQqwomxpBkK4/Rkc5Jcow8TJxuh5
j9EWrfWgMyQ7cVk3EW64w/HFz4Ef3ZDrnyUkoLBkX1VkkGybHZby5OAG6yamzy0hV2UezQUATYt6
uqFFEF2mVMfdrf71gUBy6LGnD9xnCDC9PjzrFF6X0/v33NrEMG2dqrOCEDsaW5K/iv9DDLAIxgCl
//m8DAJQhgRjYxAQHeRiRKyCHM+Nt/MZ3J7K5swtL+5U1NRAIIu8loC/gUx8t+oIJy+Y9USLnck1
SyuByLy21CEJw1xSm+7h0fd6hU0knXb/3i8Lssf4uVD6jnCcyzZ0q8vlGGBTga9LVr8/WkqL7yfu
bHiRwT94ACIj3fEdrN6lCU3IBtEEQW37u9++GiqZLtmI1OxQfaS3lEeq2ks0sGhRVOl8p3jiV6sm
bWTlzKtyTc2oI6oUgopdWULsVOAZNwbclzyJjV6DEoQqPAw5F/aOqR92PDnJrtO3FMsGLAkmBEFy
IgUlLtODBZ72n3RTW1uZ88Hu6R8moG9PigrJlIdAO2IOYk2xo1zoDtnLH5RFQHXZUPvVSeNxovjp
Tx+1ztIlZIta+n1FziGt2+xlwC8CDHDqCPphCnwIvK42czP7FSYRe6Ti2sX1WbRCv1oD5czt6WaL
uTRAhkMb3PmgPlVCwaih5TvHodSRTTYuaRe2ZAqBqfE5gAg2V4MYfyVVMqI8lqPZ0FQ9NcYVHQk9
5bP/iTkYOjBBZVLwmsF6doBypYIWPRIY3AbS0v9HFHhxr0RpSsSs4RtFMqJuPnScUiF5aonWkC7w
h2F98BO5wlY18QAJyTh2pjXd470zHWb7MgvZRDrghxjLFuTUI3Sq4FJfoM7wfHLb7B3dyT2QliBV
IMmdBQk9VmLKYywn3jLAovBUWdcOfYQLeAz+8pDKvzITb+rFXFrvtaXLIrDOzsJpM33pFNjQKKvM
o52zr/wGsWg2Pi3MVFXb+5uhjeI7vfkZFdNvt+PTmMnXWsxJtsQUxy9VAdiBs7G/kvax4BLU/h1c
KI9vEyNsNc5a5xMju+g4rVzrqgv0ziEcAZtHf5lPA+Dg6c5ggtoBOcXpe5CeQTlujhQnn1vIyiDr
MHTViyj/O66FuH0FPI8VywszQZBN3+GC5yJfem3zfae3gHiQ6QzIJP/78leJQK4vxLb/3+u//CXn
sL6u0g9m13OVr8hITcfKWA40qOyvLyN82WP4XMjeRQ2uTrsu0hIdA7QE6owKNMc1IzI9RmNpzCxN
oR91PZqdqE7Qnol2jnRCKqCvULuJDeHTFsMoTqnsWrlnyP7fMIo2WpyifVurwYcpoZ4aAGZrTeV9
GFAmyBpYDdSCREMdgRtyuAlv00pUOGjLgcz6c4MTP5oPP5QfR/M9EJ1hiB2NJDdktWoadyB5X98O
XrWYhOXBKuaFaXsrHbcvoEqQUJ/DVkbCipSGYFwBa8RtYaOLP3K6uxgg+23zUhluQb2hbT6Ojh83
b0E/pmDPhsHaXlpuV7jSAX2CbR3H1q7vsvbp5vYDVpygqZYwVuzXnmcCFZfO44PncWBsZ05wSd9i
Ajfvx7omldHFGRTGZj4oyVTqgy2T9lC8IFjTNzfcLLwZ4oZWjK4X0AvnVkl4keGUS1KmZ+Y85Oyw
GytfKlnCtDOl5TJtV/K7TQjhxIQD6zIsOXULNzRPmOrk8UN8UXNYwRV+qelJGrut0n+ryAgZqIPd
/nRTkQpPeP9rGDsT7Yo/FhKwjVi++omJZH7gnrkbAt8/F2p7GY8EV0oW7XLrnPwENF9vpVDp3tQl
Qj9DM6wO8vaXMy+cTvtHDEZ++/UJfnZK/xa358ZsfxCZmrbIk1wUOK3Mv3f9an1oaAaQ9hM8tr9r
4Dw4s+iJZztS7eWjQcN2BaTV/CM6qsizznoXmijJXnKbktTXfKzsqX21Dg65p5ljA1nXJfNCg5Ag
sQcoTMFhVAhapXS20wakjuMb28RAO5jeEzwHsEdRYee60xKViB6/wNg+AL5ftWaM6OZ4bGaqgxVa
UEcd1gsk1KM9EDj+3ARwB2sTP/Gipdb3iyRwKTuAr9S7dOL+gYzEN8bRpIJpB4uyyMnIPMY15xXn
yT+AB8B8srhsNirMJzJLHH7GnJA/Cg4xK6kn+HUkbC+vd9xFeJYqGmpA+inx0wbWC1Oa7EjfEECX
yIZm56Fn7+nDNcdqEgGeC7upz9J2oPr8Ocm/7SblOm43hLjknD2gzqD68h64bNwefvWBJ1R/0q/p
sW4JN9Jpn7X4vVQmWaptHacQPKa9EtS/Z3oFt3q62vLQEf/Z+IJQjwEYyZypnP53Ds0Ueycg2quf
g2/hkuH16TBooihgw1/n55E6Q9q/rDb9iIgViCzymDNjAo57TgaRGi9Ry0WlPF3kycwcLkeBwyhv
6iajiQ7jcTGZjlQ/UQdob3PWiqUdPKqxnLBd2Qz0bD8yP2SIA5GTbEuWw5pH3JekQU/IlxpseZEU
wQTWf66HoJaD9HZmBM4y45xQ3h02ZdfagvwbVX3Y9l02GKz6Qu33OOvjfkSmqI0hWE2pSIJF7pux
q0T48U9kHWZw4LkCLdyLSvLuwDifEk+UIeoTUOHkzED0xUN/8u2dQ9a4aMPg8cYUWeRm1VMOHxP0
0kLADXXvv4Ikn6ntVfC6joB+WbbEwlaHbaoSTsoYETY3JoIxiCbgO43u/xUPLUYFy0OjqOGQ+YgU
w1tuKBOLSWXeEkAUpmR5EAFhQonrDscdhVs9qVaNx+8Cuj513uvrtM3bgPRqoSbrJdG2TqvIVee3
hX0nQ/ZrBO6BnXZaxjcbDs/rmJwXQnT8gecMGJ2tEKYZWiSDwIQPr5X8czgi6BILc8I89XPN0j0P
UjDihltmfZ9wYgBNhWhCGdMXb1TXlhtPz0lPii8BTD5kO6hCscmwVIVqCH3dY/Qtx2dxZtKqP+Qn
qFKybL8x2nceZUER1cpf2dSjUfVIb8ft8zmhSlK8TyvQ1Vu5wUQH9L1yl/DSqxn8+O1WbCR7y2mo
kkEb1tdgXJYtY9s9z8rptkbW/394ym/N61fG36iH4VRw0IltP0twGxXdyzoFiB+LwWevPRIPZWyD
Ah3rFoUu88MNtPQC6TF6/ch8D47um4zqFZpelMmfu+J2QuUkNEiT6kJS+UtqLrdIrjy3Ku1byzNQ
pcZPP/dRvLTFcJV8fLy6bVKY+lRjBVaOnggWzm2WMbAXDcqACX8Wapwb9sJwiHryVNIGrVfcPSIV
I+jyv1G54TA46eNreL0DlSl+NJCRruGCTw4GTeerShPlw2qpuJZ1+eF2krq0ashvZw7GFNczwaMw
j9YPbDdZlMSNzv+/3l5OvzqM+06aTVhdYwIESy09bOkQBl8vduKYXtaIL+ZDLgzyyR/dVOjFPaux
u9NQcamsSq6RHenyK/oiHGIv+SiiqNwIAxDxjHQYCskoxyqHNF5z460CD7w20ovBkeHEy0zxFBZH
yueLQZ73MBewHyGLPA6ZQXZQLjdWRApPellE7ob6/5wfcdGMY3H1WnR6R5/gtlbXXpqL8QWifHaI
pU7jAkTq2CAlFVmoY0E80fOFm8USYERyZU+LXHOd/F4WTC9/DHIO8RFlh0394f8xUg3YktQP2Y97
D3KSsISofZmy8yfXGMqD075kP7ObBgQWDt/nxr31WtojnnXUsXYMH8Zw9PgR9hbaqKrKimpKHr3p
+G47pZAETBaJ5QxPZr4jqezVYtzxWarFxgjbo/RgOL3lfY+c9kmNGkayxVGxpDL3ODr6LOXsHmPy
qg/W8RLvKuKdyRps68gmTP92T6ErNQIkFB2PIeU+3oleie527jBqwCO+35GRqmo2L9aE0YpplRVs
pX/Dsfss7K4dMRvJ7Q3gFd4fFaCEGRl7sBUIHYahyP3WTdgCLdDhlZR1sSh30ohS7xhWNCW88HJf
GZ1GoEM6eADXhIY2ZHIRNTAhg+RsZ3biqx79wE8/2E7s2k8iBAApsWR6DqPFuOQYashPhD63/Yl6
D14VlTwAPCMH1Hekm8ZGUyzipJ9xqVXSwxY4iKp36uEY6Qv07VmnuXUa3gxh50XqndkrW+M6U8ot
mKY9Qt3Uuk5voC6gfrthSGtwiVf/+OU76HnU6qDWFuuciDs1KLsANbkUVLcraa7yX4F8F9e05ud7
rhhGPiNjKuVoTxz4R5zxmDov1KKREKPNEi92JaV5FEdXetOX7M7j8gdiMczp0q1FfoTyLo7hp7SX
mM2ZTI95m5U6kVJIBV9u6GNMMqBmnhoiHawWNCnSJ0aozkvK32clU+gV8UC9H6r0TyPiJhizPazw
xCtYe8gsdz4lt0uBNl79orRYpGlXW+YdKkD1NMSfkuh/s0CEJowhE5siUjILyz1OtKfSy5rmHMKU
+97OBkQzzA/HRqCfuUehsW8SSoXbhyMkYLsiP4ZxXpKG4SPxfEg7yFmS9CIw71p45F/1FncYM4dt
4V0Tjtm2idKOzAK+pY4IBjAdD75K3mjzSREsvtsKKtU8KG9Z9VkuoIrewfnuuubUrbUBklWaUOhk
JnTqBKJBgbq9rZF15YaSAZlLhZ80OSztz+D6hE0y+sVnEMNbBApqIG7ueH0XM8yckKujq9/chVSo
pBoeLLmqMkju+nWdbMBzAya/ICtobhyFgHQiZg7Lhf3vTrbRuztG30fwH4B38kAC4enDGpzwdJMB
PB2OJkQfShVqdrj/nukbi6xddbpcRVcU2/0Ll6Qd/aGuRrSB56idXEVkT9GYN8xy/o5Il/i+/FRN
daNpyZKm5c4efgJFnWJ1wv3k9ous3WW2R2Zcy/l8rU0Pz7ESYdEngTIaQNX1e4rbFudto+wgO9D8
NEmYZud/3YmKAODdZd3tfFYruagYiS7BsgxC10p9XSuQdmyBKTIjb/rJlru+WVKjI94Gh76ZCPGt
16iC3GkBFYoO/QiKxGh3nz8tH/LkZn0KdtjoJOZYILDcxUiFoMr85c9Snts71OVaKhKSjNSRw1U+
cXkWhPRO22pPRfR0puRwmq/H/r4ng+ySxG6w0DSSs4SajZm99SRN2gbd9vgHHPCG+CSZccKoFYf5
QomrBjThoHjTFZcKys/vpJBnWcYSWUjFuiRshaXy2S4kQeKe2ABCZSlCWv2KcenbokzYw+PqML8b
z6Al5aVlfGQvaNZ+t/8wPqGfQGp34Abz5mlTtR+o5nl6Eioqw+VC2MtPRty7rKjPKLzoJ4sYlR5Z
uuYFItrHnhfB9EEnzCfJOL68Bjegt0YpcgHQc30jSwXA4XDHu4NFu/dB72hxEl61gl788AQ7JWxW
GRj58ITJk2X1pn43y1EnxsuKsIrFw+T+bcuwwNFBR7mpouWHeOpwqJwRrg4wDndwGYbRjSC3Z9xo
8KUJ/OumaLLB3yxjkjFmtLHmFBEIGpOl+C6+uuX5XyAjagvGSTWwVZ+v2zFY7Tjk8yfrU6HZfHgn
+AumRo9XIHfhyStAUjN67KoQOxScIrD1Emay/UoW4hjY8Y4MtcdU2/pfmZoX3c8a1F1aRsb3UY7T
EHFnLDHgiMtAZ7RHgNADFjF7HWaxDLaEpFYN5MeR0dqBE3/nvCH/D9b434G+6IXTZdYTgy+KqTfb
JRLrqzdgRt6HLVMHATeveOXj/6feSc4EacdsRlNB8dmqB1Vv7ArXKymOpJz8oXgsIocx+v1RhIyX
UxDfMtbxnZFH/xWYQVtrNFV5Q121rp8L3oHsBu6sDlCoVdGCGj7u3BN1JFnPJBC54Fh7fN4jDxU0
xnTue5Tj2GTNEfxnp1ehCVipyZnlXFTtDoTBjEI5DSYWKomWg+dNeZja5NX/wH69fQcSg765QV4a
genDIzbZ8THJTnKeJNAUidDjwHQDhJ/KK7hxo/nHWG5VcMV+OY9lI3x3LAOeELw0QgGC8OSoglbD
3x6CQeMhkCapXbWol+pvSIZbVF/jfQZUMM6ZYmNFOd22TRGXvrp08PleKr1GDhl/w1TepY44vkSR
YNwMJCNttSjPxisJcwxGCOtyvydEeb2uG7pDFiPuShgwbro4ozpnuIQJwmG5poxFHYMeSvc41d8z
/vg/CPUj4c7wao03JY2FCyhv5BGWLQwAVEesmC0ZpXByLakLoU5ikGCWrn7Uo0po+CGWIhVQmAWf
J2g3Izkz8hdrqXRJmxn90IINpif8PK95dIqDiQ/YIVXym8kHW+AXdg2AS3j4P0dp3mZt7TKs8XfM
7y+v2bS/3T02ZAibjotXxJsNhd+W8HV5H/RJMc5cSci2XzinxWVtPSPzxMSq8Mga6C+9f02QPsSF
JREAJugfqtdP88LmbXRrgJMWug1Ak/Jo2AXrmV2T5DWLxDS0k4ZVSVV7KNcyEvxnA7D95QGoGrI0
OBNHS+AhNYV2xflJSlWoTYHkfB1ULMs1xbHGfrsh0q621+JuRihB3GtkMsOU5zHPQuMW1xI3ymJH
YNWhgEJZsO/Rfv2LNSgdBxl0ntyU2QmhO5WM+GUu+WUs7C41Mht+mtmWVtpAyPjfE72dEbiTqP2m
aMVFmk4tlXNoDC0u1IHO74JhlpvDfYdclTLoP+jzyce2Q+AIQ4vBS8onUDhCzbVllLocvLprulgl
ut6YwDfJHCka13vEio2asdJ9oFd1A45pL/TJXVaLVi50xy34s+vw706DWwtKREXVfq9xzssUPipz
a202cs/G6DkXsIr3r8mBL8i0PYZegZqZhnio64gDUwXS5nb7doOH8b2hstbKWI7a8Fvr3vrEXBgC
NfAUdsWC1Gent+eUawL6IIjdCsK2xQLnJZY7UNQuntlAtBgA5Faz7fXIj1f/YyHyHUQ9XN+ObZk4
pnIIFHKeqhXLtcX5pUXQAowgqYrcPxJXcLTeDr46VP2LYVaLFJusSpPGQZ230WT5K0I0Ox8qlTcq
mObYtShMyo/b9D4kj0cvOX7MhjL9YEK9AczWnTXWrod9yo3YlVWKxhU4G2dLrTeqmTwU2tznf+mL
fAGT9f7CpIjNZvncUyNQc2gNiJabLlvNwJ8pcJHWqGc79YViay++h2SkHCd+qjlbsqeb0vihjhws
ZMG6nm3G4qKbmrGjQIJ/PyN7eHeYhd7I6b2LvLartOCVKcSn+os1oV6ye3WzD5pgzb5I7JBs6Ze+
wlf2L5xwDhLSyUbXKR4oyI0XU63gplVAUZkXmZFBv/gTApNSoOmU6BnXPOXTlnw5pKu3QaX6lLIF
kc8gxivBNHlmUZQgFaAKNFQtc4DHIUbcP22Zeg8rv8mG7h4v4lXEAio2ehmR67fXUjCyBuqR/IvB
TyQUqulurHVhtlmOGNFASHf4PXBuO9tazE4saG01poaSIu/B47w5fSVASPe9khADAoS2VLtohNKr
xnCyC7uscBYn25tc6WFi6CQUw3V5P/4h991vw5dJ4hjqWTdTZ1O0TXbvjHT/qoOrbhWGdyjvQa/L
NotaS35m/lwANBEpipKNFbn1m2/p8gn19hOYztmGvuRhHl3sFmuv3hWZTFuim/uNvM7Q6p17XXY5
Q+Oi2bNU2fKsVFpi2O5VHrDVwtFTE9CgaYLvo4ZNXlL6gONBHRjYpVbs6eD2WwzR7cuArNjzSHDY
XvCd2Gx4kG4fur7tLSgep1d7QmeGdO+tsIh9VJPCOQBL9IbiE7do/BBGsdSXixeKNnH+FyrbG+RJ
PbhvEScvLNZUPSrJUFpns5YCzYk23UBr03TpQxiI8a5Dd/VhwXXMsuZoqdrcdqJz/yL90QDmm9Te
cxIX4gxUTyhmroOgqIJFDzkZkyh/Q2BjwAcIgbPSFEeJYvgT0kwaWXOqyMO7hLV2GTZbPAl2zFTN
PHeuzdpCAwNQ9DH5si9BX+w7BT3EiiETIpcwQ2cy5Q3nxaDNSGZgk94g1cnSJUPPO4QhcKWG/x7p
sFJz0eoXWx0AJzp1N0fFzAH9HGf5YLZBqqqhjmChIGQQ1d0NBjR6HPNS9r+lfndZJpVmksElq+nR
0d3mVC3u9U0tvr2nPt5wUSqH4m062BHvopCHYK6tcrYgg9bTRbyTEBwpCVDwvzsfTueeLI4dOkRR
Y4ewSpSuZ9fZ/L3/9N06bNpL6rz8epu0FUOSHNxvR7mMO/UozeQ+mVcb0ZDJhVdwBRyTAvAjTbbm
pgl1gtHvmTxqIZD6Tm2zxi/P7pG7aEj1KVc1Ku10Xq1uPQGU+xphziK5AX4ufuKOlJ63IzrNT/ib
LygKxRPpB/2DjQvN7YIKi59citqCm0eGoXlj8JbqCxuQes5PJfVlEswNBklzoA/FMdafdbR5D+zD
IEiX8pCoRJ/9gWsdND+iOuo6n+j3UEjS8+Hf3EbpYYCSnje3xkgXAyuAs19EsDV6UEuwoxwPbrkn
Icw6p/RJHd5QOHdWNzalPBpiTQDoKKyfXgf+oXXSe/FP5WeRiQqeYK0qfUnV/8+V6ytec8MHBNOZ
t+KfsxGh110Ge7ZYDUNaY+T8xCJir9EEU5w9h7VOQFGf/viwHbagu3+1rvSW4E/5cU6+KmTtHboL
8P/eL5n6gIzg2YUrAVWiuNAoXsqH6Gq1/KRRB4G7VNjTamKaDGpnSGn/0uzgt6i6GnvuHOXb6eAC
VOsr1cmX+QAeTdLZr+8KYFfyD/AN/De190rCtxQkc3SwjZJoX/xYZtvKeUIbOnio12qBiL3H+82t
XgdoPGPKud5BxVwAboO7j90vFoBAReKf1Q6fwW+FxoTtplDpWKQ+P7jWGB3Ilgs3NSvvU9M1XPAw
zLbVT8u7jlhcvv31YOuvrHsmWOF6OFclXY+C/IeWFeIKiyRbVEmN/TnGGC1RVFFVF1lFHwG32Cp9
/Oz4oaK7MRpfraqLwKK+NnwnxlztGx/w+qYztTrovW36de15wPOHhoZGTWV7sYQdbia+5XiPz6zK
uuk8uGEOJBSbEKQNe84jNSOlUV98tyJ1PZRc6RBf9Tssb160cCE05f7AWy93pMfO1XlhBx87yS8e
low+MQXtJ4GM9/jkrR57BG8bTamMj3yWF3E7geHZjtvVlbgyeaX/qJt7mtiVlOOXbMOrpRmzr+f0
My5OhZYWVHwl5/yotU2ZNu4+Khl8V+YwQhTCaU8pKq5mO9+OEdkwBMsj4UWo/+X2cCT9v25hTmsp
esYMRjyCVeCDa/CCEcfNmdfqTJYKHqMGBkWPtyd0NaZL8GihKPs9bTHPvmdMCTuJfW7xhHXzpXE4
UuQuYGMtxtRX3y0J8urmgat+oZzC6ItF/xKMdFEbFdkisPjgYHD5Dc01RUKW5d1BNUgHcmr17zYf
R86elJ0abJwUYbRA0Y71VOoVrlzujuWbNiF6VhoY5HSc+AumXn7xTdZvnW58EpMKuyZIDr+oTlY0
Sg17qoZ1/WphhdbsY8WQGQSuFcqVKIdHcHPsre0ExsgSzJmu+Fr8L3HrBrltA+eoRKqe6WeBCmFS
dD6z8vYVCb3FBeHRdZTdjaMbEarvazB+3QA/fH6HZl9U9h0agmkh0pWnXRZm5xoc3eINLSS01VA9
KCbCXBzuIvRzG4ZjholZbpwD8rzV+5zRcZIkpvfVq21i7uu0kFpsncdo+u+zTaAojPiqLo0UN/fx
/ysKxZ/IPM961EZTM9/0CO5hxzmoM0HPSYdqaKpsLJO93pf/aUsGzxqf73cvYAAVGRPbJCOqiLR6
tTqPKlpZmG10kxIr9MG3cKzGMXfzWIfEh8DJaKse/6CFKsH0hj9DYBYf6S3CmJzJCbUPo9rlyVtL
vlMnGQg3b/MFFZ253al/uRI7TkP4XzyjHP4shDC2nC35TQO7EOdwGsTkS+nMQM6IiKa4Cqf+7+yG
ORUtzfF27AONZ8N5P/Y4KN4cq9f/jU2nc7Z1J6QzgWViJ7T0jnGU/dcjFhwocU/Yve3ms5us1cne
NLwZVX6+wbFhxHMER1pXh5ip/ReuogkGqIhDlUE1qphJ8T99nVBo5FAZB+IjnQ0ZkpqM6zBCJpKX
vdacohPGJ/3qnDGcKB5YSZkzuayFjcocNpnjFdk39QBeWeI3j6GJDwpOjtkzRri0RMCHwRQ7q7Et
HyevesuuFkKyasMYydasixG42cQ3ecqWzh10NFlVyUEUlJg1mE2vTC9x1TH9aBKM8sxI2gkqM8vz
xD5yV990tNDJYGPeo5swdKZXksWvp0R5NrZUPPi7dTU/+nteE0HlDU6/KyNH7b+gnlcJ14clMbQG
uXawaAY7pgiWxegL1Hdey1q8r3F6VqbQmqvyzeoyebDwu5+c7BGLW42CnrYK3Z6jqiWhG1pV8Nv2
VNCub/Hi0HryLqCue7BvYn4t+Lj162QZ0IzMtag8AICc6rW/OS2XYSdTJ6/DXw6PdS0b4hTk5DAg
N0tjBE7UvYrOZ+jCmu3Og9+2vJ+oYU8pA/2p0Uw/t40RgrpjIV4WxoYeL7+BciPqKYEoIEaOtI66
3uoBLSNS53F3YirKuGDkl6V/klHgSZmyM19mOWgO7dMMU5pNo8a2SKNHDsZFSm50v6cMRCQkGByA
EvVomoVXp+VAKgneWZnr03eGAuY+QJ5teuuIx3C1uI52ElHY6mzpeMM2WOw4+QRrTmRDnlvgctKy
YKU/9S5TBh68RTPAKgxE8HXP/+zQEUAqeaC0muynKAFz81UXbzH0KOT4pMh95opJY+5ixCil82az
2NpoOqXQNsDBleFSlFGbLTBTN5R4Y2FJGaJuOxfofAGdubC41+Ejxt3p7eb9FBou4aKLvR41x6vQ
vtUMHcawTtYFZwLHvI6vdMLLfDQT9iwJJteRUjcuEgaGjTMCRN5KKtWN90xAAECRqx4oM5wxumOD
BMeHKlQvKn8akXbKSBWOkCg7gdGcf9qML+KNpK0PevkBGEdmICWKvjbva20ypAz74WkVyYEGBDof
Xr8Ndrbra392I00GrwSXlOXNv7q9ZTqkTx9ymyNhIZrDgD3tqR9I0+RdxzcL/XrPa35/KIDYG5pf
yXWPSLvKA42FU9ndRB5VzsPX4WFHmWhKiSyLTI0h2Kwx9zZA4ipDCIwjWn/zMg0sBKaWVj+Fgat7
ajlCBhmyQdy0UlrLCyYIZVbLSgKUd7MPM5EBy5DLGNC6Q59EotMGkiH74PCZe+gaMiyeW/QN3U0S
9IF6ZavGRfXDBeTyvwvYJvyVayrOZkNp8egflE2mACEjHE7UB7QqLT/WX6hva1hoQJT3LW/nmhwk
MQQ6NHEhZBusbX52bbxTblMHblWXmsMoDeLgsYHxgAH6/edxF1oqevt1KJGc+4DT9vvZ24DibdmD
24Umg7U7lW2mnIdW0uncaFzyH7oucC2ZFgYHjRbNGkSah9H+cDdjIT+Qkz2Ok5mqzOpzPGaRoFv9
2kiplZIiakYQsGZZ/CladOCuZbcvrGkr7b8wRJZCT3Cb2pw/whqwH8iW9SNu0mbvtLZ1/41ptLG6
LILzFosS5n2l/Dt2LH5gHDjVxRzkxHRvoSzferTemB2hA5C6dL2KwFqbc/FSYhsxz82w5pmw17Du
DJaCo+TESx8GaajCJy+jUeQwToB0XHo0LtPyGobWCX2vFlyD9BYi/IMGMDqv7TtUOg98kiFSdoQW
QfjQAIrqaJeIILcsQZwiJdlaXBG8V8pYPtKqwpw8/uzareBGweecs+tlCyybbojn/JT5Zc8iGpTk
eJ3DCInvkAclPZ/fysAs/ads+LqujDCQL0vvsDJEOJsxDP1/FN/agU0WQLaacLdlWBplhcR1IVIN
3td2BVZGvJXfqYc1r0WeHhpfglw+jejPr6YQv0E+z2IoXPxYrd+JWSWM9AsDS/C5YprLR8PvWovG
pkWogC+ATgoBUjnrEJIxt1tNNg8/O8Nu8z+Mkk5b4M+AmqAsPPTbqTt5tRr+pp7l608oxqjSXbIC
MtDvEFdlrlGjfqFn9I4HEOEn/rVbnoPzNTZY9eqEDk0sL/w2Bx/PX//j3Lo2S7bR6oHZ+868QYHB
+paVnGiE6m0er2cuzE+8qlZZq9tb9l9CR5UB5+boj+Sz1McuchbqKsfRZP3ie46qEGcrzjSx0goj
MPnak4jOUfONpQfY2gBTmxNoqBr9jyuNP8bfFcJ3GP854ycmNXJ0WFF29suLF/+0w/WdbCe71iOi
TQr9t/+Q7Nrmm2PCdMoEWZCS6p8KsrE6ZRq9mRlFkZxWCzfZ6yuFINgJhZKTRUw5udiK7bR2ywP0
sfb/4+rjRkVoX8Ql/3pivhDBWrgGZ72rMM4nTnZ/sHQDp5HHYXP6jHXmG/gyGW7P4RICjRqhBqlP
G7aBr0lj8rLWmx1WCPzjwdyYIMjPB2nmsnznDaUf9RiZFFDQw8JfCUaQ5W74GEPKhJsPzBTfj2cy
sonFlZJXiBYIpdE2nsPdRpz1dWdyoGRx0WYzLSoHC7AM6m6hrtSlrgQ0bpjGIPowPypxR1FxcnqP
Wf3SK9LV5wEnmiSXqmVLxCW6wmWOZu2Idmh/6NJny5N+ml42v1OQ2A0b75f4E9dMWfeesgRk6GLu
mGIL63DKOHF04mWGEzK3Jf/0RJO+5XnibvGaWjeyaL/v3nIRsrOXCqded8vL8fpIvdieZBDlSQdN
Yl6g9XjPF8DCkJaxinOFO8ZuV900gwl5bOFcA4cdTf2cZhesykYygFJcG7fAZWKs/+SPK6hzT9wp
/+DiSI8kPdp0TPc3R65QhhXN/9qW44a1f8lnVSJzCcBGwO/KIASHnHq2AjvCb0OZzoAQ2rh7baAB
5TDZM90JSRSOXkaQARXb9qWhc80ZBm4q5FPu3YG7k1L+eVoTyM7d5ghgXQLn2GEKuhcJ58nzUD13
tk1gRW3+Ng5ZtweF269cZU+DLaBUYUmcWLANgISciRlUskggL+7MuhFk/jJeBfdhvHiIVy6cvWJD
e3B1vWPpZgCO+8bk9lTn1RpZvLtFbOpm9vk/CBIKq94wQ0fSgBUaNhoL/l4C4kon3VrXRHRh82fF
eUIDcC6RLSH2JlM+4VspnilCY3pk+mHRApNpazK1Rsja32E+qId/HVP6psfSrgpV2wv9NpweojzN
AepOwCRPPonHGiyAcPqy9ABhntfb4VrboE5IZ/E7IjAgSGDviXd1nkKDeFTMEEJfB9EqLOJL8YSz
VFSlxw07+UBbcRWicmWPYHHkShXIVfIw1Lall1ekKfnUifqBHMWehfcjmgjajH11DfeU893iPpVf
zsbbNweNIfFPFq6CEQAHeSHgRTdqmedMFrSOhkTCSecsSFp/juuKWTnPn6+BG/ntg+ldfoc2bWBq
cR7n/ZYZ1+GyxYsrdcGzcptWOlhOpVhUZL6nd3PlHa2jR8YfGMzqanq5thr5cJAeIZbcfZSlTCRw
/V0H+2dPfT8x4C1oYbdfO+hDrMJF9pj5D7qZHRX+Zs6jlW47xhQDjf0hcJYTXMppOymES6ox814E
LTlKmWdXqXrR69Z3gyieaujJfjMgmiScrmx6qTK1R+8c+7aHIKKHvj6QLRAPSUbqI0e0IsmEHsU5
oPOwaMwXadcDWqG80FPyqLPoDlZKH4GTx1fUqtr75SHMI3YzzLjZ3h3q6oTuVi32WkgjTWU+SddB
JXDNBpHoN9TjEQBO0TuEG4qX6DJz/VO6RbzxppOUFzW1/GIn8RoVxqbJjs6BjDMOTrSOO8X1uglm
HAqZb/MbKT03mC8PwBD5ssHOEqjrrS+y1+bC64bi9X9qB1Ouwv0IiIsduYtv2jJ5L64mvR+f++Zv
foQRIc3Gvn6A0m/WeZNWgAj9flrO5bi0dWF7ryHjKJttDXc3zuOPwFrOjtKmxHURBKtB0ho1kSlf
KtxKzzfQe5qbrL9nHtfo1pYGWAqySXftsTSpaRJLKrSS8mXSij3JMxmhGbW3jQg9KUuwLda23Zo4
bNMRdb3QJczq/kP4ZNnKCKnDq3gJioglq/aXlwx5gQxn50UXy3hOisuj11NGyKBU/rO1Bf0wv1P8
+zVtraoWKate8q7Q6grljSJTJcYWmodxSBP/UTb8fiqpsCJ0nUEd4ggRCtnUdb91v8AnYaKX9EfB
fmMEZwpG8yyyvov2ppwd/JtYIeplX8xlEfnmiWcMgI/cjusp5rFnSuq5s7xiuPrrE84HU2Kz/NRI
XVSVPEMhG+X8UxmhkFL2ywxkRDg7R+BzkVdMSf3SvJ+qqyY0R/i13djspm1PbBH2Sh5rbcNApiJE
adIpNfOCTBm0Jl5D7qDlLCjwecy46Wvul6a9RYRHjsY045JZ4lHxfl+GVajJ1AjuXJloUsrGW8fV
p2BObiyMWujjZ2BWXTp6NL84LWylqQp8h/Ej8X7i78B9q0mE60gs7nKkxpSxeMqN4/3P/QTBE5eD
wEzwnBDZMPdn05vJM19Gw4YdPhESeztWfSRupDX99e4RkkvC3bO9mhEZ+zN+Rgc2F+yR0XIpn+2Q
Qqa3SCAlBF+HKv6x2ejw9AsZxHKLsZ1/uZDf/97/8ziW/w7xJ4GZKjUgliHCYuNTrPHHBmCy+d4l
zJb+qoYgHf33oQzQL4AtWZrv1CTqUmqvWo52A2lwM5Ik1mDFqLIY7jAPLTCkaQWO7oHE2oqBz0ZX
k75RJQa9024T0iuLSvit5wwDju+RA160XbJ7fID7M2cOBMe+n4EyfwRgjJXVZkwg9u+stdXRzOjM
JSUuMcdyjukhnjO5yB9kymqEaOp0kHICimMo6DRU4tEStXyx0Ph93mINUAAxAj2e4l+Q0eKUALTA
82XXhn5mFzMbFWzOtS2pGBOcqVaAjvCo0KSYUrPPyL3h5UAmdlggeEaMXCqJTzS6R+K4QVDMAikw
OC58HZBp2cgfL4FPiYPqiD0038ipXdquCud7fFESvYBEmIGv3zq2fZxrxiL7lp5mHVW4ooqTzKHB
Gt0TsvYrBO7WG0ahJOGIaoCrpxhZNpjZOEcRt9Kv9BdBMPQ3pP4UrEfDpIpn6SFbN0Afm2nHbecp
7mGt/v8HQ6yTDoc3FibxJR93d+iElx/e8xDMQNKRBi9ansS5xPFNaWj1FHLLlI1nrWb14OKGAI/3
74ALKgxsY4rQqksyyN/slwPrMwXrvoq7IhUfARtRvl/NtFTLg83usdeK+WZK9i5yg5JytVkkmAPV
/CYXIDx+54XUknhG8hZOZUkFK6nKKF2E/gJ2pBYqtNbHOGYJbAnsxP9Ii3p7cw6WMyDCh5+8Hemc
+GF0wHvDdcavWK+7XSE7uUz7+FKcYjGXs1MT4oxnISWSnK7eix8jXdPWEb5Dd+T14OcupapUuXQU
jYkEc33YRKnAiS7FBwZDwD4UHoL4nFeAEYRhTndCYWfu3qMgiO0tTC2Val9epFNZuFX7cm4CIpOW
Otwhqd/sTUUzg597E1UBGf1v80J3GVddrxBQQOU7+RHvuuLrgkXSzzThUXaZgVmJgQvZVfQTqLmV
eQIiWUE9KLA/opMmX8PpPsSRTpfEj5WFiQrtAHvAeTMMO1dlOJC14KryA+EF7wfk8ttXjraWg4bK
2RLPiz685u62+EfjXI7/9VrJfHROW4EHel5EpaJ+Y6+MHc7ZVr46kgXocT9KkdPJGNjcumP93QLQ
0rHI/0xO1qJqc8suilhNTs9ZuBoAsW46u9ZZ/8mmaG1MEvHsoSxaZU2t/rxIGKSiub64viygoTEa
NVM0pZIbiQNefHfstd4FaoOT0d2lY9WuWAo7Wu5gXV0t0EvI2t7RVpPoQGTP6tm+gpXKYnrkNr2z
EYE9QR+ICsVYT03l7qFEsfeFqYQqaAGTpdLjFWUUYcw/Hzbsiwu+bkPjHsxyOB82dHQC8YzpkC+k
5Bl+p0oSyaczkOqOeUfwiR/xxt0vx+Yv6gWloQB0uXwSJikmRwmStq9boCCfOR1SoWRAZTFGp3Sm
1AOclV0KSav9Lk+Cu0eUO5TWiSiWWUApMAK56+6O6kIBFKoUyVE3KPKhClMYxKW53i0HCHz5gQ/z
pvctsEn9PPcT6WDQIRjUle9doc3oZfo8cPU6pUJSUIXkFqViv1hOaJ3eVhiOUmmpws/Qdr5hDTbm
bmR2Grw/bdqB/3xqcV/QCzWUwBdwWGS/RB9CIEbWmq2jXe4TpMehnGr7T9+dpms8Aqa8pV7QEUyQ
8hyQipcKvgwLskqD0XhFRf5bwgrlj5vmcad2ExXJexe2CqQropll/d8ZbVzOzDGIN4rXQcCiXJoD
yWI5D9IiWfpUMyjJIzdPW+VNA8Vun96udpZnJtY4871xv9TwXjkIm212hW2sBrc27M08p9jcmor1
ra8C8nUyxjzdM9hgLx6A1HutSyNReD0P6uUEso++iGaUe15+c+DIsp4W9idB5fWEStClSVCHPmJU
hNFbSToVvJZq6FCZCLe/BB79qhPFZwz9sQQrRl2T0cL0lVbRvWEg/5VT8KgkWWsrSwlj2CLoRYrq
tXKwvRbAfqn4joXDV0uL41ydJj57NH6AMiKkQdL7PD879Y3xhYWwQZgI7W9QWtgV9T6sy6jKQdB+
VfUdfogNf40YSRHpLj6nuM1UkHm0W/do1DK7W3QrjuZx1sEZ5f8OSJAB8sZuu1xmOxcQ9IjXUSBV
8CzjHBuJ+nDl2ZSUDzuXNaLp4J/7hEF0NsIVywN50EuQTA5z8iOczsMsID65Ph6iIakZmFFSUivt
wphQGoB65OOBnmN/JyBM0gUBqLeAHjY1DROJrC9gEvW2oe+ryTy99e/XshKom5wH+GmUrDO98R1U
Ey8Wr08GuZaWz4o0qpCiZz2FR2BUcrqutFW2eS5J5D/smVvcG6PPDJp9Hmh5KhLnzDPMvh+NXBnt
ayr8u9/ZaUwJynWoPO7gU70G+QsEL3AMOLJshZLXg35ij9cQcbR0aKUqvW1Lj6xf5mM8L3cPcbwQ
HH29NA/trQr4J2/lgNMhJVlXLQv122LP0heFRUl1bMedUDCuv75/3Yy40HG7v9djkJmmoESOHFO1
VXo544EpM5q1dZbNscWh8gleKJsyucDLwDIma8/aulaOKaKdbG0e9QyEDgNQQWTbPxxYQfybllsX
qS/druRE5JcpGsIE2klReRQdtCjlJyqdS255AJGbd2S7E7MYx1uEuIh+z202BEyDeBo6WVjHAAfe
rwqZF/1v1einz83eFjfFisJsj4PGqBmDxVMuIPipSnYf/Nhw/KwKEORiS+sV/ddDJHWqvWcFRnoS
BK2xgDOFAeammE2bwibKp9A2dNS5xFveW36Ra8WMeG7Y7GE71+1r7vY88yTPM8V1RH5ZlKRWzH2b
M8VrZuQX8tSd9sYWY3BnfOQGWawvsHJBxmym9/muJdY7T/fMJ3n5VV6jwqszg3Vjv4aAFjlB8QKn
DmHrUlPmgkM/BA5JAo6V26dFajVXqIhCjao5ZBgWr17F6CO8uMVS3P/Ic9GDA8AjHhTNTsgMUIQp
awNp7mKeV8ZVgWjV7A8Fj5xLNxjxfPbT9J6PK+fk4EDnzv2oJAcYmX/rve8/jydZJjy88IY0lJAs
QvnB5IhTbARwvQl9PfzS3Z5w17jLT8xT0R5Dkp+zWeO2WI076Zle4ddL3ikpBVXUjGakPyCxzxF0
J1cja2P9VQPjLOH0CqK5vaBjNEjk6NjXaVYhaD8tPNnXLjNFXycEX+atE0IBCTI0RpQTu4x70VLB
0DW94/rE6DkHgBp5n82vVd9gt2lu+uOviLAJLp38D9RpWkQaOQkiMDjaobvhaBDkXzF1ErFFe/0N
lhTQoH8lUx33rvYHw+j8IgG/MWLCTRa3jRigVCpzfaf0mboCctmUomzLjoVdCrkSP+Ax5hMt1eIp
quVoqVxyMhg/9QYDaV9IxgBgaRSVg3W6yQ9U3zwUo7E38AHMDhD3mwMINj74KLmzjZKnlQTkiQZm
0SQ8NwcccHjAJkg/acaLS52NeZmqlsfU1x+hUhCl0RYX89+0vYAId0BpUkoCdIz6s28/0jKJ+pTQ
ugGMrnQa2PDL8NAV0M/1Ty0EkYuldLyHUPAq7TJb+n1p0NiKPWrrI9YD2G17fUfm11zRJTDD7l66
BCySDDmk8bySBVLHgIlncEVCxsCNKXyGEbHbjjcJjTrq+rlBZ+A6dlmHxbr/iEjLkNf/ZfNEGC5u
pvDJ454bwCpPZMM8fdEjDxVfkDXrIKGRn+65EBrF/ATb/7QRmxexTCyaR99OmES06qSi4S4pMIAY
zdbag0kuJKoevP2cCXWkP/MODSEByxBZHSVMEMKkeS8qNU9PdDoqmFsRq/jBAvlwyiYM7BU2DjYe
8eO+GoIPYUjl2J6bViVNcJ1VvPUPyAL3yOtBNdOT6YOH1VivEziZc1oDjihk7Yk86WH9dt7AdzJe
1YAOjH0voigNY+1hIrzw15gzWubu83TXCVPB5Nomj1iWDOxfu2mlNWZBLvjM/M2rIiHY4eWTX+IN
oc2Do77bibYPDUljGJ4KkZCKPPBBJ02Z22fAcd2JnWIisR5ytd06MUn+9ntymfmVzouuAsnwDGcT
EGrfd6oH4MIEkty/kplMJfXR4XJztLBdFrA2jF+1szmbWC8JgnXFE9kba7H7ZSLZyt/tJvMGqQ81
pjOLm4CNkMA5kEltc1zlf2dx+xwPF0f8tMTSBdR0QZUzsV+R53+N7OCPO2eAtUC0lgCueoMlqao0
E+EQfCzQXtaGkImR6oP81WP4I5i11u4fY3MKmdnfRtr9Gc2x8sXhDuvKf2Lev3z+/eOEUzakDXAv
vhTbrQclctEbIdqQMrDHOvxwStksFjwrxZcb9fXoGNVNYZmB+oY/h/WSf2N5exdPMaBkPMVVhOzt
njxpWx9Eh+UKc/C2whiCVLzfWPGaWRU3PlSbvvYsCcI6htzH264JkLfldIxaWLaaED15vGa1WwQS
g/BEOwEpK+RpONxyG7djYlWPSrdXOmh+FOR/SN4cdMpMU/UtBinzauAU36LgLUxsQv+Tg7dVccd/
jvMOza+4CKrTTpkf/ZkCuQw/0H96lR9t9KPOSs6JkVEOUOeqN+bgbGK5cTqq0LxJPrOnGFlva7r1
PBHK+wVdy8FSuUDHZJqODakDnXDdm6RvVvfDka6sQdbMaobel7DGPEnkriyY0giE6EBi+4O60b9N
7p7HmpyfOz0mVYwPkUSk/mFYs7IJ5s5Gcg37yn4dbsBXlpOCjURcTMB9xrgbe16ld9tgp0RSwyBV
/teTHR+W8+WVwFXf1oSivjB78JmVR+qWZtpA1oqWK2Z31WbYzL32FsJsX60OkvGVtybbY3vg7AZS
RFoBD7UQEYodVllHIjKkI44Ex3ENFw9VfUx05HKjIQRqwaxVHTdm83ceX7PkU4/ir9dMeddVFTQO
X+ZZfZ/Bs487i1CSqGAOg/STPJ2TyT1yKjG/XSWic+tRU6PcBG8t8/9//Iq/JHGz2YX4qOYoCbZt
12nJKpYkyV0xsBFHkYg4pwVy9MzXr1ENsIEZ0HXPi5gG0evfyanD2Omp8X6BKyRQn+0024ovRB3m
yjKH47e/dKP+j3TchBnNcMRl3+Yzid77Gh5TU8Av3t86MDZa0oMbYN0tYSEcGNN1NA1zlUMUya2N
11Xqq9xIRi3S9lUjxrTtTbIOotL0gnBzPG+AA4OZMsR5a8zZGu0EB0a/2QYlkA/01M3FxjwbKCPj
1QPolmsvq3fpHy8xhXxEX8TvjzF/+G+2+VauK54Qy06FWiPqYKft/7nMhUvlWIHKr/KBFqAMm8sy
25fWrwOZC1IYh7vC6xtqxJ3wzXBCfNY1rtM62OWIebQ1dSYwHxESORqD7Wg2MulYYWHP3hF73Nh/
I5tXMfRCySPR3sIPMDctQy3bnFo4xuZSjpGJw9jPf0TPsnBlWn2+N/jrYr5iMXYDzNT8aGnHCt9+
tJ/H/eqPNky56gY6w/tCjHc7BUSu/CZZ2azSmr4cDqyiUAnwUzmLd9Jf/wdFAQgGRTCT/z7W1tPT
MJIKWSZlom/8+oG/ePc1zM32LhxHAmT9nyfdffhzE1LED2YHQLtwkSusbEyAIGFnto1S9mXu3brJ
kMVybvjZ45DXpk6Boa+2oa7hIYVP6eqz6v6pePHUa9T9Q7WFtTOnh4uY4koLB0j7ulGkq+fxU7Fa
htXPd2g6Ap3OrbaxbYQRHvzvRHq3OvYLaHGOAaaF0AlEmJcw6SnosGr3OK1OoiOOzAmvBf89eAWi
O2o3on+aI8tBZ21SwyyCDH00k1q7PLMyT0Y3mejTd2mLDTnat/8fchxjRpdMRHw9bsHgInI3LHdH
w9bb7wbtph8JHLPnm1LfKi+qCdsOwSFPBzArek2/tee3SZBuquGDOyNVTGsjje1lV0NRMX6XyocE
s+y0MfmqqAhRcjuJFeLLyLxc2XoGoiUI2MkDt9AgsKyo7Tgaic4S/+NcgmGERTUFREvKvvDItEZF
ZaH2EIxYgnkz3YxO2dT8ZdcYLvebZLp16W+/KOqX3Cfpkp5VZCySSbWLi+EEp+BCWGO2pj2a4ZIx
Mx6nVfbPriuk+hgOY0tM0ib548YojKybZOGbCjdm8hm5R1tBz9N8zUU+m0J32B1q+vlC7IW5xlA1
wyuEAKSCbDC09W+qlN0Uw5OaqEA4nV/4qzKJxsI9PhbVWdr/JMXBeUnFqc3EekBQccEcpsw+dS9P
r28UYN/QmBMSrfaGpC4L6h4pt/vh3DSGfEjXtjBoMp9feeI3L0LZZd6+ZMlvRESu44yajGaz61KQ
9aqbjaKiaAPj/jYEcvmaOdBzIA8exihX/a9sPHcGgKJ8OMHCksXSvNJRKOj2YnxbLJAYFqpfP+uq
NBfk8K51iQQ9nVdGSJZr2UAoiIrYmQdIXOYv9RYNNPUrlI4UxxbngkQueHV8yw7FYxltFA+KLOKb
GTST3j74kl5S2C9EJqTL1gdeg3tRCaR9X0uvZjcGkPOKFGiQErXzfeDhPwRg/VrrQwlc5eINykbX
V/ytrhFdlUA9kGOwvZOCE5N2F+UJasztHqPRWovOkg3VZY0XuWu8QCdM2yxpJQQ9IjaEuGOO2W5J
dmo7IioHknisN5RfnrwaeaXf+C+rFtHopkRBtGUdxGNpVPrR8vuQFoCgR6OBb5VQ3YC5zdJO23kw
70i4D4k8ly2OLqZG4R8JAuDp3HgdfbQND7So3pfaRKR15tort3hZ510xp/xPbIjopw+qEaWMeyE8
9jqqANfpDFcKzi97q3h3F4YNYJy7W8Om4G0xgvy07SOoO3y/gQv34ADu349Za/Th8oig4tTjjdg5
F4x0I921r4bLxia9YKZ+OPKbI/ttEJ87yQ16ad6R4dNr97wYyUlguxwpNb5D6OXa9PTvahgiRAqd
9RlXG3oV26HWVwZZ+hXLkJv8xOEk40kvMKBjUqqXswfprVJDGHqvv6fqQ57IKrhQqHlZWB2p618N
dVA7VvbEBnECUx3V/KD/SHLn6OQg9SIWDr6nO1AYOLD2a76eIA4a42KQGDWFw9aWWYT3QpMRKLdY
vmJCgrYyl+ATpd1R9FgdoXzGKCzqFtqW0PNdyielG7UksbRcWwvzmaOcNab0BreXFMzN/jlP9C/T
cOyFUdfqKahI20k2Ew9jPiPm5I7m047wlpIvJ+cx10gqvLNYl9qk2ZtqfLuz10EFOVctsMBQhbS4
Gwkce3D2vbMOBjaRqPhONB7CNcUQ7g1YC8hh0rw9Mb9YbLbw3bYYyM46ZeviNUzpDxOu8FTX+Atu
6K4FMQU0VIs/oEM6B98qBnoQdihwGfVGuHFvSYk7CdMPJHAXOdAXq8Uko0DBwjPB1JdBmjRms2ha
xkcZiVXrdGcLaphA8P/sMEvKLSYttvm5c0xBjbIl9MewEJwfoyj3Of3rProvkYKQmNbwsQ6qz5xe
gnKZHbS4IIckUn0F2yOMjDAvmPE/nqC+3N9x9uAzlvDQG0bN+lxS+5zJluztT9/OR+WsLr+OddpL
vwq9fJgTCprcnzyLKR1YNt5XljwcaVji7ibKMPdO5Hs4ITqPfNUK1SS8XH8vegKtYatyBnEGoWoB
AJamSYwyVXVdSGPXYqZIHogeWmS6h9n7rLBjsrAPaTDvlqnU8J26JmwSwFpko+/4jJSs2kEyGJ7G
3deJc4umO3/0IxjJ+2u2amK8nbhVd3SVBdoUSdAOEU/lyOHa+No2B6Ix9/FadBBBU8UvAYzexPYB
DkIKBUrlsykr7H7OvpqWsTsvXGx551zSTeLhwwPlI7wIJ9zYFeydCjxoGWjcs0Ljt+R73LzYoQQ3
br5Dw6r0L4ZOrsF8gKhwQG4gMsNRPbIh6lnxD4cr2OFWd8wJefwqt8l1EhmP3b3OImkBHiXCKKb8
S9L2WYas5EuEp1UhNUGiRgiJ1A7TeUh42Cfe7v3BuzS/4+xRRnNBYNE54RP+DRi8NFkCflHGd6Ok
fqFrNGT1YYzCg5RUBXShgCz5Jggctb22AJAcIGi5mB70OO4BrCJ0teyOiKZvshEbsk6lSGWyfCeE
NTel0FojuiW1/LVdjMIFqLTwtu4wpfo2P4JENFmEdnSEhejS9YiHxsUXMwfalLwkGY8KrlKjRb1A
1TGZihRRJ+7V0sENHAu80Xdk49pMACxw2kEeL3lUE34tx4+OOiV3jihprN+KmlWfGrOhNm1WzHg2
lF0L1Q20roQy9QCdHiw3YDHtvkM0WTW3QSP5OibnI08GvHz0Z4ZUbYG7SGbXlET4bSGwOdQ7PyRA
aOae0MXZBJBrKGkdxhyi3ttoPgxPVLP1XlGJAbeGLZ2SHAxASXrZ876VkYsDRsRcnKLCpLA/B5nC
M7m5nYnfAST+vOSBUSmoYOa0ht1h2aZQ6q4C1mb+E2QMYPj1XCoFVsx7eViAHX8Z/65zaHNAQhYH
0ZlaVgO4gJLWuSzeEDsrb0m8g+kkK8yhTCt8Z6/uCOn9y0cVcGCszPIkprj4OKpqA6eBWY7EZq4+
gTXv/CSOm7zQVEeK/Mr7Jb4MgduVbtvTpVdKkvY7HHKoxWCD2e5t27f8lp3FC7+pEGZSxpZ1Ccf3
KfoGIcvnnBipWChA4sriJRT6xdWMC6uwfM8WJkOo7TEe83gaEr4L4uYqVKjzkDk+5Btz1RHl5cB/
itBGN2RYuUmkySNFp5Y2KBQnqKVAIlf7/oNcVS8cbSJtRnq9KTnymGDD2NhqmUBCSDQEppQV7kyG
8qnUCXNhtAig15JOZDu9WOQPtVNdTuctmhl9J6DYnzuUVL8vUma6s3KraB4723aLo9fkh1PKUVYn
68/Dc18EU6Rg1r6xKaK/GZ6B6Vf3pen1YSPIsbrWPhyysjL9hkEOGnIENS4cnTk9ayOlaiBFSQly
BE4sREJxyYHNo1rDXLip6Kq3vM7h/kwMiAUJn8PrjV8GIi+uc/2WOPPX72rsvRxlPh43BIwnAeLw
wDW7B/yuaCpWjRTfRnMYw/hxXprrxVE33BQq1JKEas1O95O0DbFW9pTucQXtQ32d0E59M8blYB5S
wOVPXaXJAMVPhGT+mnagINaWrFFZDjBLwRkiX3IavpjN9zvEMshqdJbW7epufTkBeAYkgWu5ixSa
ODq9iJt+05S42L5vh/3fnB83XBo5AotnjwLtYfh2Gm8e9V2HKL4OR1LBEL0fywM7MdrFigYuEuVQ
VYAteGqj/pX2UQtHEYz3TaF2mI8lgBycRfbfbqPgErBIyjZOMW1UMXFLZIpdpJZH7qDGJK5HBlcI
jSfPnGzipV0lGYpW0MxNid9ZlS/3QYdARxF+jDkdYjZp1b286UipD6ato65q6J9FHt3up4Sixfh1
MLnucxxbgoNGE9nqlbHClqYMi1qCCLWpOy4Rp1XXTlVeP6F1yqgAEb3La1q9cWkMe3o34upxMvqY
GDvIMGWZJZgk43EtkmbDDRI+RoL8tFxxts0Hnaahk/AkDRQr1YiFkOPbN//mmkexcR366pTJAz8B
nQ/KX9IBIP+R1nmD0EsAYY6RlN8moZTTWVeKFkDqCAfaDCWk2/h0oCNHkTGpcmLarqqlvV4feFZy
DWnd/V3aBBJJ3EvQm8QsN2v+YFCvhb6hbbrxR8MvwSY8axgS1EA/Ra6ewt8E+cvGPODQE9AQxs7u
RAx6U33v7ZUXJ+wme2A3VUkfXrSYNSMkOfzaIVSt024AgFmy4upWT6BvlQQkqvE2JWauqugiX4qJ
s17whb4cDR9a11M8pj7ksy6cA8eySeGLQBeSIVhDr2162HxP3+DsKkkbZwJT11E/a4UJMyEnB8zc
rwEuL+CjScJOWc97R34uLPLwArOMyvpegglURuqfXKoQCzAScrW0M9ez30lzNHg4ONa1V6be6ol9
mvW7VSWObdQH6afdYkYMwNY0SdJb9DHS0XJo4a66ZFbI/cEe5MHQSuz3YD1NxBUkkObuh6/FQHmw
5P7Gny76ZD75BQryO1aG8EYsN50k0H9UJArVR/Hau7UuYi6M1qea7CZRiOAvXNz6yZdXg7UaEsta
cCtEXzRhNdR710LOJj66RdkQbwC3DZQmELwEASVi98mn0fiGXtMiADAc1xPcJd3MH9WPYk5TRFrh
ffOpI40oElEtQxd/NWBzUTqaQKAkjfgtWhSgkdYr7FCVtwrJ417s66nMKLd7AYElaD3Cb8nGDd5X
l+ITsvXaKWV85FMre9DBkqxvZ9r26z8px2lkSe85NVoZtQFku6fM0nunM7nE3JG8Gg/JfS5k4Ell
6JK+nJO0IbGUL/IvNATtrX7sP6Q5bZ6Rv1gFNqE7xdtu2ehNPyyTqC+4Ya8f28cLYIhbTBVCDENt
ARH4dozVhkgHqbaVuEAe7wbuhdxccalXwGHckjSMCkacqWKeQ5e6uVFpftBe9Xqc8FfZlnFqBNJt
6PM9ZIG2Nz5aDYcYmMmKeqVlsebzeOFOcZE2WZG4kFwJDnJ8g9AC0o7w5EXTgullwlaTYmFmzS1+
qKkPiPZsSm7nHXV29LsNZkiACVLNv6is60zVCxcX1U5IY/8lfAe48XrSKLojP/Ol4GQYjwaZNVtg
3+QFAh2Rd6hLVVvRyhF79osjsuy+ebWumyZ4ES0SjU4oKLqj99pgVeoxlUh3UvKGIp0WNJzJuDKi
haA/jww2RAiKpXEhbW+6EjPJe3bD9pt3VgHRfQDNQYQJ440NdAP2g5rg/cC13HmnuxmgfMlDyq4K
5kHIgd616W76UozyJPeHNNp7lVW9ahTNkhbnOKlBPhJ2D2MLz5ohA8hZKOFC2ObpiT/o8hc+ZsP6
YvppUW2uH6x5d/JfWDaIi/XnZrZdWqf98rq1odsZxhcRLDBvq3NlfF7FsiQSktoKUgEDDIU6TmTk
KjLq+f9spMtqO6167Q2ig9hFLUJXyyBQqhZVffGTd5mCv4gtbDkD7fX4Uw9LpMICHoenPmsOJNnD
nBpHcOj8Tu5SJSgzTEDHrIV8LpZSdn5KJ2WSyOEUrXiVOIDjfajZWGrnIQuzmvsCpsP0OCMNDdxA
PuBpT08LtchEK/uGCxAa7iNwVxXsXfOcZCVvMgtfUSktFLJD4j8PYOOZLyy9IAEslp2hdhdWErjb
WWijhRrarYjOF8Ug7YyQ/3MbTn4wtiZtoLZ6hiv3hNL8nQfZjg4eMYkBaEAhIS9PPUzGbjr5P/+2
VUwrYJat4PBvBftExHRy598v2anEF2dEJRAa2rMsuvarDzADZ0iQxRtpI/6zSZzJFOMKT0H2RG8O
jwesI7I4A2MreAh6vyvm483r/Jyr7rvibDO+hCpmV9skufAbTkgUGLWNVn2qp3aktNM+OXhzawhp
eSz4QuXkTro4n50YKZlFyrJtnvBNhW7C2ICFieLdjtC5U+r9cc3p2LmFuHlg1/QYv8VeRtVJs/lP
1owh3d+zH3AAAm4jyCnUyOw22+r4KI6OgtI/6K2MK0jSinAe/gDlnkOuffbQV6H/Mv5haSfEdeRd
Vq7ePCA2HlZ9MKiGmkFBt2/VYzvPaWc1llAjnkAWH8EGrh0SwYuWMPQGH4QPLst8CWsos9LsoZvq
NFDuL6bsFZqxloV8u1l7IRBCUj3Xy1KdtRey6uCXu6oQ2bggvcV0eLSpIqVH3YiZNXz6+q6GPHJE
7T41HfgYiPJVNNtFgmc6iOU5dayX7Ap4fs/QYZyJI0i9KUvg5NgDI0SPHdqKvMKkXeyNiHGBFCrZ
Yb6BMUzllSeonxgcfaeokss9rEevY/pVxN1dP/IZ4c4LBYygysbNcyVcigQUiG1MfMHdAgKmvc+s
YL9UzoGBS66zmOBNYY8QnAOjHusEHbM1+ubje9w/NBBAMtIZR4g5jnKfKusfBQWWm1StqfMaCFGH
DSDK1Q2GTLVpOy3EW3CciX8OsjvVXbCBp7q9C5i4YsVE9hywbvp9SADPOfm1p5fExh2+qLMKav63
uuCibkxyc4cL+5wsEztvMLvI2C1lYvvgdo+7RaSjhcVtSrWx9egw47KIKxoGYIsFe7g5R1EPttEC
8zQJTuCFGJmwVAJAH5hlMxvhnMSrR/+p5R8AioPEIb1ywxvgCu2CDo9WlYQfC3knMO2FaU24mGdX
dx1Fak5trbDIHh6xzYgIauSUkXLZNQVhP1nY50c58OLgUchnC3Ta3CRKFnIgoQgO9LNzI2+OBKNY
VsD0CxvNdgS+cYiH2NkJzhEQwENG3wGVcPyXRHoy1gvTR3nMVz6wfk4hYHSABQ93VznhmQLKGXU8
ljjajHFWKOlJvMkRY67LBA47gaAPGk8iNf23vHOVpigSXZSJ8dutKaI74QRkipdKE/mHjaYl85lN
IyQh/AOVIG9n9H/pvL/FvDQJ7YPoB48sBG9t0AhiIL/SvSQkaPvr/yscRK6+RR5OrtG5r7Ozjsh3
y0Q8kvdCpDZBc7Ls1Tioo2ryQqa15zm5Y6aqSJjxGAMQf2u0wkpIzMCn+jerY7DKRg0eYOCkXyLf
QzffXCeuz6j6HM7qBuQvw1L8QtCzcJm0bjWxbbqfYG5zXBuy+GETeNrxlgPxkqoQIUYPbbHoBBdg
nEiwrxE2o4RITVAXjownnYRquXXWjR4MK9UvaCIBOxlJVMjaXHAsy/vlhZBuTYkTfk6tGblvmgux
QTe+gi0Lu3RXAtM//ZgmDsC84l0Ak1yIT4DqrjApvpJps6XWg54dn/F9SZB5JKTtzHZtydzmWqGK
/hptQ/kp9nr2IDNgVqjkcfgz2docUSHczfOOEHX6g+xlRAu3gx7yEY1xjHs7Is7Y044cPTCKbkmu
XK/Oh5FwK7RYGnyxHwiOgrG9gsYnvEYHvF5aIyWM/RaFuDoBZcPatrqBRqRVwUc7/de52dFhHQoC
LyCZEXQHgZ83v2ZiyjfYCN/k5okM7PrZCFebqwxGAbpP00UAUzIESaTgVfHgSKNdTrotEKHoZ5eG
lo98MM+vm3j7B0HH9UY2WZiKItw0ytpJjCX1+ZDcgqPpm1Nsnkyv3nIw5thhUTR2rnKEMMOieRAL
o86IZxCYUjVs0pMcc5nG2+2x1Vj5Gb6cLYuBH5lYB++NGU2nxkFCpFa3KyfOiXUGGmsSz1AURfTB
TSVvAEzdZDD6OSitkhayialEhuWMh37iEVJtPkTrB8Jk+ZPCdzWobgtXT/ZHuObsDGQ5fhDs9ZeU
WNs01H4YkY4UEXJ7VD8unfPD25ShaCdMO5M37yZoragdlD31MMxYCiZ8Fq7OBu97+Pw0L0GVklNt
9pl0PgRLbUYdzbYdw5w21uvGzydqgrgj47PxgOErr7AXJq8Bg8ZLJZzfQzjl99NN9ZdH84hN0AT6
WsaojYgzdPdXi2qwizYp4w2uekNmT0vuGiZdNDcBOMNv2eWc+LA0rrjVdv4f6Fl3Anf5bule6Sji
lK9fPGnMXbBfFQvI66JHytw1HHjMsRx4jqa2wrrXbAu8bm/yGmsME1Ho1MRvDXJjzzyx3NrEEfyS
d8hM/E6YUZeBSM6q71LdPMjMneXstrPOhVOIoPE0N1fDsUKdEufUn+E6ItVgNCXItskoP5XHTmmA
U+2BpYVih86aFsnTHYp9ebHVSe0Bc6kDLAf/Py/QEFRXkmGaRF9AnLkQ/Bbn/YeNRKR5ZdHYUnse
aDCnUfUzmz4IcwOTurIwgqk9sungygrSZ5+yIY8IY6U3zFbSwW07TX1E/1vDQ5ikdd2IVL8V10e9
xn45ctvwGsXUP5o+NRlxDrSrF7fOzl8Jdv0HiLaa77S3M/RrG7kKDHEA8C+LIPzVqKlHra2wh2LE
UDAnWPhDWE5Ca2NbLHnWQm4PBXxlVg0GBbUzosJZYB1sn0d2EqXchim7LmL/9WdrH7eeUw/oiK10
H1tm1Jflzx4N2782ZYpnb/K/PXtzFdHHx/UeMzbXA5dVP8xF9DU5EDNf9r1lCR7VJF5/P2MxYnA6
W8fb7sbL9JIQaYY/GcZWil+hyb4P7tiHJyDq/cHvsbZ5V7xJGhgvIic6fz13sgX9eP2Wx9JTmGtX
rhiw/gOKxJ3uKYcOekScXERVWZ7mMIrJ1MugSCMkj+U63TUXCYqnUY1UGB81F3t/rXRRXkAmGq6J
B/xCKmlZL9e99ytijPWnuMtXsjH/x0NWpl3Bi3Yo/wPnI/RGlm2k2DDIoo3ySY6qsTEY2pJjA8/O
f5MNGRGVn4l37yluZjfm9vxB/pbgPbyWAyYOXffTcmlIIh1ktDftaig2j73UlW6/Em5IHiSHc2FQ
ojjSTUEnKhg+Ptu95+nr7c5XQcF6Ee0sAwUlw+4rRs0kGZ9bIG8xjpVUZAtW2NI8cfizlS+ONxHW
4AP+10lKTCPe7zrUAba6gdLfmhm0y44XcirJNVM+SxLHP+MHTWoaLN/Xjfv17EGO3tODP2AqLeqB
SwE13Uu7E4PvkU+anDOKk7PLZ6e4SKclWb0OQU7kdD4RlJL/ChAnaGNqnIqUarpI7tNLfMoVmsla
G+fe4v4acAlG36jhc+gMR3VKE66U77S8RRmTVr/wd6GndEy0hJTZKgJsz60MR73X2XV0UHk1Hqom
FEbMCaCBEz9qpCYJrmzJNllY0VayeNhFhn5wVZOS6QwLiSICz+5N5v4leL33A5DpIfUxVFZ+ZC8R
GQ4KUhKl8j6f2igmE+XxU3vTxvxOThkrt3AW91pfR3hSbPR6RWofzIYCl/eov8E1MADJbdYL5Zoz
951AoWYR+e+xXbGn2IXvsiISgyV+Knb5m3howVRLFoehvlS8XwYfMjxbJHgPsVG4rJgqco8eMGkT
FSbFUyPzFb+AU9mkTeN1OPJCJNmQ0A5RBm6Nk4vJzhpNZ7HlVPnpgjMfLnEFFKvwt9AT2YxJP1/Q
ccLdlEQpllIkYBDuU7XCuNdmw6tCEv+7Fr7dHxYrBUMmKtChZlcZCeJm26/9KmowHJrzTPrxESga
MO1FdU1jx0siKP6RbP/DWwGgCrTtyPICI6VmdBRx1UUSN4RLijngaUkCb+wUvxAXoBpe3R1OqGsN
f8U5QChBVt9kqpxPOy9ayo7KfZsOBzO2mPMxoBIQYLqzOFdIAQoDraw2NiegP+RX5w5BZci37mmo
ii9LnrqwTP6o9ixlRboNnqJ0VBupSjp7MASvImyYBgVCrZvSlR0P3YmNTa7d3o/uJ9LZDOYSkq0/
l1xxn0tnCsOYGvzH7bH/lQyXr3Fq5gJBDr9iWuRyCHG1QYtL3dm5EQfTMZSQEnBMg/krtduswcGi
1e37cdjwC+g73LwRqzOxOUzgWHiIb9L0cwV6TtbEsgqowJfSxFT2zLbx9BPTcLbELDLS9omQdQeD
OmJfnspU2OcRsIt6RTkfLMKFCFancKRiY5j5kkHs+aBUSfxOdK6TnoCjq6j1bZmAF+9DJzO2y/m0
QwH+tQEO03pyWyWCsIEk/Vm7JM8I1t22ChR2eRxsardjOibdBiowXxeHblaaMU2wewpaJWPUYXOj
W9Y5UitpyOoUxZHfwkAKI5bMEY7itnSFrfuByHtrb6pjg+7+UuYlfhz6Oos+VKCqoBy2V+AMdHT3
sIcyN7h8VzNsJVNA8zCMzut1ucPumvvqTAEV/wt5Mwvx7JH4EHsPfmiHFgugvwFgyLYjGJhlWk/Q
ZC8B7gi8A/u+RN4Cg/KPReAGMgrnYiqQyjXfOsJSBjM/iZjMNki9WKOrVrCW4LEsSKnXRyC3Nzi0
es1uQY0vdcDnKTp05EJWed+amjPlJFy+53lEejF6vVGQUhZOIksEDnCpNojk6bvO5UPfhtmmG2c1
6pcCdoQmAUhn4LMzBa2ZMVhuSu6IIPzLogn/uVjhAODri34HRTyKTiVyEtVeoEjinDOIQ1c8QTG9
4UUUoYdp4CCC1h/Q9VhYvdtzNpCwR7DELgIk+kAiFdkbp0oPtLw/Es3rcKe7GFfyHXVqALujOvGz
cOOeO+rj94DzE28W4IaWvAXRfxBV5eYmfB0LskOqHU2oD9SNzTesAfbb8i7fipvQx/2ctPHjSu7d
3ETrfvEGYao948qJa2tfm8kilyvqq6nC3M6wh4fd9ajNvW5ttMSADJB9Mc7SrdusVr3bXfbU0MnW
Zc54FU1FKPqOvWZAvG7kCfqE9XAVIRR6HUbcmtG9jlT9/OdLO8atc1PDw80BtOASjpHmF79RyaT0
YfheXq0ic4Dc38ted/uV538yDdDlR8P2xw9nFsl/Vx+YKtT5e2Ee5782IFnUeI1JIk7GQ/KlVqs4
VOHNNWurcWuN2LtwyZH9PgAKb1T8EyYwjKMtCI01OlJXS+n74V4lTH/A5TjEDQ1nNcITW7FzTwoj
mcNHkBbArmAcDNUWuZsIsZwzNHq1nvaMmHmZeCBG2GTzxCrhqkrJ0VJ0dhfg+9vqfsR88hkHifN9
jlOHkzf9nNnX3PkWVjjMpb6qdXu22l8B3T3t/liLmHJCWXJn8cAFcUiaV/o3HYY3rtwED2MjWhmD
xy8UGiV65sXtajZfXKnU3pstotTmb3zdoMzBeFD15AlxUU46lwJbk4rJSu11hkBd4baG9ShvlLR+
VVvCv5ol7tsHfMIiNTdQeV9nGTuGNAr4eMAi8rN+4oAd5XQeGccF7GX/dQ8CgHWalDc1YZqfh14w
YwsA0FIp7YeG2ky+buwarqW4RUecKzYcCRFN0fAeGS4+R5F9DL8DCGHFamYg7MCjBu2E7cuBCeQ/
y/171jB/GZOdUaEvaaMbC2bzgu6aF2rezL0+niOhPC5ZqJNSCRgBOGdcEf08mryIVMkPfhhfNOxu
audxGeceECNU+tGLr0bcJjRwaw2tpfYB/kcY6WKaN78VqrVii8Bhzld7sbU3u//09nQMOkqijwGZ
54PeuTm4gHRwgzJzmCQfBVG9g6GaT11zSekKfEL1DAefEIDiqENPwtYcPwMcrO4Jgt5mgCVXk2io
AJSwf+WoakdBH9mb0qVpqEGo7ulrkIVj63nPh1Ncxf6p3BS5tfLA9ZajMzA7b/Vfvg7dGVgsbT48
3JWKXMy0Han1lHbSr8WBDTCGs8QG4q/mJtBjAqsLih3XCp1UDMsE0W6yom+/avytx0Zr4KRvwzNa
YOBjyf510JCiHcsA6lZe8wG12RyMgYxu2Dn34XwtTU37DcndZyeHWSq7vpByVAsopHzym7HJZ77K
23DHtM4uM5Nk6stXTNkWsWbZ62E5UJI0q68LcMxzb0e9Wmjt+BZ9lusZOkfVKcJMA0GqxW2Jd7Rb
0hcljzOHk5l2TpcKNmix3bj4SJ30lMSfSmzQpDW3qkghnCBSyt9FyG9eKQE7vYIkStZcMRuWZEtp
zUh5mTNCG44e/5JpyO7eWVKjuiYlZxwquJIwUMkRbDEv+fv8/ZiQZKB2tHEniqaGKX+QetbJorjy
re3aG7+7OFkv2YkpZixfe5/tcnLL/NF8kv8oJb7sf41zfx+0udpd0Lj3EtNnB9t2WeiaJY5R3qLl
72OLcCkbTI+HPOBj9aZdBmM+s2fjKBnRboUgip7vylCugG/HWtanU9MzVwA5a1QCIGXYmRc2IVxH
pht3fw0M/CB0Vxw3TkXSFIHXEUqDfVhyKlzMCg4KyCh/+GEVrp8Exa15lY62rDE0jssxdaK42Zm/
2i/n0KcbMTQi9hOuw9UnDYRH2KJmQUo+d0EdZdTAHWt0fwGH6SVpkCll9xc7MsFi0ER/u9Wr5fnS
Jk85sNvAKE6AC2+jG3v1qFjINr5/O21Mvsk+Iy23W6oTvqdl3uUMWlUClQjmvgYCik43g/XbjOgJ
gaGsAjhi1BvifURMrdO0mU165HQKwvd7XmUsClN/URayHOLHBelbxtPQftNkn5I6Po4Ur8DJs+h7
sLbmTJz/f/5Q2gll+t9VC0O0dJXogw0HaAXiLiwwfyRWmUb7OEkV5wSkLb/Vf6eRrcOeYAuFR4qc
EDZqwYdbSyK1tzRXHHDc7ODTjwPtJsXiuRpw3xnaHXEdx0cYQVWfyOtxwR0v47ZdNnj5dXp20Fxh
dBDER8WtM/FNVqOTpG7gPF1CGxXJj9LvSyu+jbBRH67R04Rund57ag9JwTho2N47LXSm6ckL3QcO
GIPPajgidPE3MWJGjAX+UqDmyPlUDv7RkZdcDmKS3JQ81ETJeVzve29ETFS7nv8k1ZC+mF9YatFH
+ZiggiYQhEKnroYjfPRGop9MLYrISc8r++6SdJSHzruNusBVe6NkkrFcBZ/Jbueb28xHD0peSNpj
85r+FtofTK3qfgHo5W8rRridE9asPGtiSQErPcWu4YWq6JUrCu7YV3JomEgb8wpPrnfiva/8lIrM
vfGGr2jvyNqiuknosJ6gbBSZ23jVM/6REqRIL7YnFK246f4zfgbp+9DqCPGhphBWvBmmEa7/3Dh9
wvLI8DBFw/XSwTmcp78YbeoN9tcXlg+XRRhSPD5x7PZavMTvZtBPNxqKzINn93rDNiCEDDoXdIDs
+AV8HrFfgMHB2Vl9T+mNjx68puQbCh+w2dD4DMCm08qSC4xw0ag+WNBVJbkNuY1LHW2ee0JME0PC
L982XjP7fVVCGmwcxfNMfoNi1uwufGx1dDUitq7R+yN3xad2t8QRKuchl4DQl8I5FHL9/Yprxz42
lAgyMQA50pwTBuO500ke2nyBW0ihiVr3djttPDYu3hbnOoDNlpPiIIKu6Bk5XWWfczwrQLjloOji
XziIUXPC7u3mOBV5uz7gdKJSDuS7k1jw46qaGnTEIt9VZS7WEcLX5SUrCqpif2plD10XQoMmKLTn
tfCObE5cvrf+MX9HCg6geClC4V+Zaxj3xFgPE2NP8/sEkGWlR4kTwJIbLc86voD8cBMIwxbV7hJG
KaLrXVdLDoRHGi6JSA7ZuTJjngyfKR19q9PiWrO2g0Xc02JkfrB8VagfljPsrZ38RoiKGSKXVADf
4RkbNCNoor4tU3HadQAqMFqwFefC4KO/H2XZa2aSWD/iOAyk+7fZTwq9c9TKAzS+4uAg2nMKSzHI
/J0HUIlHeZCAej3fs5t+x6zVXDh8sfeaB+uL4mZRzeeS3rz7nfnzHuEcRRMy3iUUC6LyLEXGwEz+
OdVX90WoLs/HD6nwnUP7HnPTC7eUHq6SzhDEpqZmZTY1cvkJHQ3+EqkcriMq12km5JmBjlmiwwo6
n+okAlyWFI/1VtnRy6VND67mpRwX9N6mklu/Nz86Twiyu5vcA40JUAsQwe+A0fGCYczv7CyRSlT3
GACGj9rBwm6ooyrmkbQKpPXsQs5ZR/rVAIx6i5osouupDTMztaBFTKvPRHynj/j52pCieRTdfMpW
PvvAs3SV2Nva6R7UiAFm7BRSO4OoJLxOYw8Pu1FDHBpePFTlpddZxRFjjJT7fKPgrH6oN71q/KQT
fMphy4kiU8neFNiKoz9pPQaUxZeb/v962hlxQKB3A12lthA/2vsOiVFAdRs4rsv9liS23uLZJO4c
pA/GIMmBD9FcNz9i2zKxi9BMa+GOCQrgBmcf7gSfjZ01V3ghavFL7Y5vvS07k8OVeB+3h2DLfSTD
5l+1Y5ld3u1q/m1vFn010vFJqCyPqJc7WLKs0hMq6cgHeSeIs6BiQT88QHlq+aSUb+r2ZNSvRqP6
q67Wy2LHwNWktWcWnyr86FBp8/EtH6UXsBNSwt1M3rlGUgr+6cpBWFfIVAuEc5DOz8Jp36TKW4Xi
HyjidB2VUvJSDrl6HL3yGyvbPd1d6+oRkIiBZJYPTILNETCtTh721ukZVS6jiARRbGJNbeS5JkY0
XrQ51SasycqiskC1kTvNtE2liWkeh7B1zEhRQjspNWhEXhIU8gAhHbVav+q/vVcRVybU9gJhoqJ1
nDT5yH1HW1EXKDlOzXWwDudiSlc83EeGQnfGxV88utJYYbmCiwGPd2ev7Pe3wkyVlB5QwphK2Sm9
5BASZvP7lXusp1LyFfi85hu48CPvZ13w6Rvg1Al+QaEMfFT8PUlEZ2ShvYtKFeb1WHsVu2ah3pgL
aTUSjljEXKeChhWYQ2LLlP59H8kJWEulkZpKQ4iBTCF+RpcM+vJXPIqKDq2RDq58eAfEQsSvRm7h
VF0BV++rOHWS1nifTyENOvbQXy0+i/3xRLqidEGefoNHM2wT8XV63RcL/peoaFHAGN8/8+C+gmDl
tnTdM0BdbZnDcRk9lCG0zgiwV+TC0LUwFaKzDO80Bsg1j3TYx/vOMe9WZVq0YFYU/sd56Mx+ITHT
Djrh6gzN5+r8bnZ0UdSOnrwSaCcoPfsUzLTJdlzwCGtpdxK4iqr1CqTig3sFkwxdXvyrjaaEMSVh
72Bj2gU3ZUaa9F1XZpWzKzGSDbvR9XM8gLV8qS50zRHKtY+Bld1MDZkGUqN5S1tJzeDBW0ElmRq3
Lg9MPOQWFoCHFe0VyeOaVrZXlM3vencFORg8zeD++T1BwLOZzY2uoCxMwjlAhWuPRziV7JEHeG6A
s/0+kM9cZfS7t0Pk2Di22IrSXQzGKLetUdOAatRo6RpxspT2KC8CcnIFhXWnIBHoFsQnev7A7cUm
E1fpclFAz2lC3NdwSKHEgr/T2NxPBr5HMRyT0rMHNlzcy6YVWUO6oXEtWVfLP8DBfQfBbO2PvYNb
hUjPByeAmp8j98xk8eba92BlHgDmG969w8/JD1hanyvDpIJljCDJShprYmGiT4daY4yB0GNDCplr
512GeuG7/V1S8lfSJgxM9EMTCOOQHE4/CA4lCG9Vehvr8b2ijCehabtVTtwKUwt2wtQ20PLA7erB
9cwbSjKDdmy2MLzjKZ74Ddh43y7Izwnuv2Gn7xuLlQYlSkgKSBfzD5e5dwU3OksAg0ZjBZ0V1DT4
E0e0x1pGcdHIXD/S/xUXBd08nvc2XlXHeK64gJKu+i3Hk5awPAiXQTJJy90Yn3dewEcQZQFOFCyx
rtLME2gniIIeVJaQCaczH+uB3MM3N/M5aYeA29PBHIVSawjeW9r8w0yshiklWaEAyj5Y0O9Yz9qq
RvTM3MGRlZ6MebLkRBabeSSvAPfa9n814DgsS1eXubPjLN91+G5ETqkOdQ6uL+Bsue7l8UW2pVz+
Pvji8WfuXwTuApOLkQwGFX4st0DmCwVr9NZY11s8oMdtIei+D0zrX6KHoufjhpR4RbwoCR8fklwh
lUREUYe2apYJMUvqklQ3ZIP6OGQQEbbCTZi06eDRR1haJeki7HVnyODoVIBBltg9+XGTlR5d/z+r
gIvC6OXdsyrK/SWpN34d6qWcj294AvWPobgGhIwyVkg4Hsv85bfiKG6ygpz5hXOqfTRXmlstzFmQ
n8uu8e/bj3aqe1DmSVEY0JmO08yaSwSoWBsZgu27mtA1Qo6HrJrF2V7YbUUBlexcA/xQHdvv60Xh
QmNgJvyZd7gLVxqaFeNZsitOz7PoeQNvS27AKlux0u2JG5BolAbiMTsV+2ZK9cN5dSlF0zTzLVQ4
naEG6fhw2TmHicIeifvL3Lp4PPo3I2ga92KpiJqj06TYwmj1pbKfXcD7f+itrJpTkGqzlk5cYMx7
SESSxyR8HAS34gJedd7XOKU/r+02QsfhSk0vELuLblFaAG1oNLvya0AIv6eZqzMxEIDGV5yoWgom
Hw+XEm1J+caszHheLGY9SU6uygIPptUxNHQzQBo6x82AnDpzpskxFP9irxbB2Z+EBMD+t9DVnnrp
+YCgdx9Il9rLjEaCkv4RQmRpuaIRiACc6GhivJ4qCm/3Q6t8lDqKHhh7/Y8xbY9m/Ov2LLfOcTw9
HU6b1FF9yzRkDXD0dTS9oygQafW34yRHNXYm3AhutaCVCT+c95+YH3p3x3KcWKPjfbLlL+ikUnw/
65rxeSJEpml9hxxVmi0R+MymwMHmZtgy5HasByT7PPv012Xk0HnIlwd8UW3CQRFEEbLlkG6LtWvm
P5mbiaLKJRxs2v6STy6oj8IAwsCijx6IRbS22TFdxg1n5aoLIAsmlkvla/GhAZ3cYsW22tMjodw6
DjD9tAvwM/2W+cvpVSPI/QgQ5F7pRHWCtv29i0OhTQe1TW0blLrfKUaCv0DFuh+4QJo4DLLNbPqp
aCYfRSfE/JeEG6D2ohTaOuw881tWA1eBN8nJm8mmb6u0aA0ao07i09a/tEcWLTIdq6OTYEQBrZXk
qZO3dIvuzz9GJ1XT9co51FXeqHxOUM1oLNTd/7MJmcXUliYZ2xccPeKwTpYfgsaiMNwVja2zbUTx
azNuXCZW7BiGpdip4Y8dp7pG9Twl9D1lLhaXqS7nS3CTNq90M611sjKrVrMfAwMhAo5MDVhlrdiK
cSBMxuZZ960SCeUvyoeSwWqEA7E7tHTtXcyA8XS03cJy/QdrXOw5Qh615JkqO1Hx1+yGwoABwyde
/Nv+pwHlWHxOK69xrVSVPnv9RunzECe1mmIL0iHSTQK95LP1sSGUOdBcgR3d9rVH8Cx3LJrZEDJO
Mczr2pkmdsdok5+YcHGhn6lUmO9BlyXdDvWFoPxJCc7cfKd9Gk2K3blvpwlaUGbB1l/PfikAiSXw
5pdWsycDAhTeSqxhuxs3I80d2D3RfBgZRcdu1ByR91dVUWovfGkTWAMFkRvyse0rJTiohnCxWcRV
mPMtjbVFVOmy/gBSwAaRdIKAoLkFOKzEImo32NTJ0xpIO4GYTO+sxW5x5kaEKe/0+7AbcvD7Chii
V2457zChRrlv9zJeVSm4nTdqFqmqU8jPBYL02fPWgy7uRCKQG+saeu+6uk03r14NTzoX13N/ZYyb
VUXM8yWh1Ef3NVxOfAagqqzdWEyBAtbnLzDY8Kh6F7BNKipmhoFWmU0eql4u+I/bAXpJnOelX3wf
+TAIxsWkc1jN+K6ocINVQzc1esV7SsHkBg3NbyRw9Hr8ybv4FQdNkb/DXqZX292DIbhxy9Tgsvlo
D60rsEQWNk5UNn43wbJzqRNY3A+3I93M9oXKWXpQfO65U8ID1r5sG2eaJZfWC9yo30bUiufOJgMB
kQa3Stv0fTP7bYzAdHMhamaFseTnNvjQdkhUkqEiD5X9dz//JdvyrFl+mzVwXxf+8y1rf1duOPjm
HmVFo22Ziqs5DkvxRv8GvZhvVxK/HfdkOK5fd1E4Cu4HEUlf/Y2RMgSZ9OOtbqSlFzbjEszDIBBP
jMcvE8vS/t6xS/RmZySUILB1xLIMJWL+SahV+tZbFin0W3aEAsP1mqJ7EQ4SJTjaSGH+R9PyyUEB
Zk2Zeyp5h0Sbhncjrqv30WceyDGIYqEsG1v3xzMdLJdp3I1jFTzFeINnzwPKpPMHOx7Sgr7H+WOU
kQ0vls4qpr10G5oOsnYKcKXFAuevWreIAdOWG9xSysT1D9sPy+UrhMn9JKu6b/eqHZmN6g5gUbjV
9tLMp/8u/SWNYW7k20p9V8K5lUNlI9jWGN4WELiww3ho/mVqSbbj27hWl3E4tBxNrn5YReWND0eU
L0wh8SI5TI00l6pJ/f/Ox6YVNjnfWdJyDZucaO4dtuXDHTlLyoneW926kYbNl8eFAh9zMhrPk2jJ
AOjld76ZoFY4fAz/5bNX/SA+jjocFmHMqRj4MTdpSqv2dwy3d38EOLQLVExA7onmZyWxVOA/iU8Z
iC//KqhfXj8TN4y+SB5fhyRrKohIBEN0Q+2FgDrMH4uWFmFk5KBOjBLZTm8RTbmvYDxyyMgCLcpW
DwcVsI1RlGoNMNj53ygKFKPBSsSdKJPidaZfJPM4Sa4l7M4nBdcu6/IjM6nzk+RTsScQcFrGOUYd
KNLn969rxSHiukWZSyerYnLgdSgBOjteHv23m1mdkjyZCJASwhzPdqkFhwdJOyBp8p4LHdXf/T9o
e16tX1gyQ6TVk7wHeYcr6xqLUdN9TbUXgMMubJQ3Ra55pi4+P/49S92x2lczz/pECIjbk56aHQ3N
q32ub5kAXTQak14vztvSV0+bG8W/M1TTcH9dD1yQRywM67odHc/rIJyPSvx5RHu8mJVWpUdT2b/e
mhOlXVFPh580hGy6TfjZ74UPqSb/njxamo10c2faFVL3iDITO1QId1VjzUiNg/QdjyAf9d0e4423
fwko85xAtr29zpTXPV6x+xGEmz5f/tovoKi/KCG97F/clp4lEHn2bOgWCmy8FbeE0EgsE+o3NTjM
qO5+Hj3zitOytdoj3RNmxm3IvWVDB4IBj9u2zuuwptyh1a84c7yYOZCHPXsc178qahjsgtVdynAP
ke1Cs1bGSEucDMbKlnp9YCwIjeFxE9y+yT62XLcq0xNhk8eYcrjoVeD3NxiOSTffs/cMwSSHXIrk
eIOUQOJ1cjXluESHz00ZqgeOQIesEpJKVvSFVHJyyko1b1s0rSU97IOrv0xXWIjqOGi/xLpKum3/
VYgtWHhpiIjImcEHeAeiqzvwm0zG9YCMeA17SI4TvHG2d0XXuWERGgK97PMMdUX7fuA8H7uPyA9y
P+K+sLCL/JXQlv+KRv+b6sBQCmbZe8aYkfLxqI55d4g3cE+GMTVGTxsdULsMXqliE9EJ9Z1cM/4W
IvyKZv7ejfFvkn1bkITfyCR5k8/K/VAtKStMEOoTQ74WKm8tbiajw5C4Kxjcq+Fxx1M3bLLpkcmB
g5y/apINF+f/bE5socC+bCVkD2eZPoSyG0aBEBFWzZpp8eT2Tyf+0sLlO9w6F4E5A1DAU6TuUDCn
tTnBAbZiVB3Q/rtSNmCQHXWYLdy71xw5Y+VS3UajNozyBqGckikrpno8xduhqjQlD/b4Nj7LAQd1
JLRTxmAIQgpXHUtrXxjLfzTczg4XpB8er85nUXobin/X+vkTiiFz0bD7hHa9JHxTfaAweo3sMBAu
hUnPWXX3tUIMx6l81/7Ma+4dF3geZIqezcjkORTVroA3erH4yxvGApwNeTmHS1SPeSDXvYtjTObr
j/0fwBFtY7EZcZOgXjpmIbUh+zdyIL/MMQtxOBrUPe3hXddtDmwO3BNKqpT4UrsGi24qtuNOsyFK
tGXOZC0PbvfUmlvHE8snGzav6giWMXJgaNOOSDJI1IVj0YffzkD/DR7K12rIOLue7J/vk8q0SdP3
WMyh4BKFOz5tfVKX1dzNBESiyo38cF3SLEAIC1jbAUkwr6MzJkbrVo6CutPUbkwPY8BPHaQE9h7Z
s0GFXte9ABElhW77G70AQo+wRENwYMwSB6/W6W22Y4G4LXVLffp99r52hUkhIlcKvOyqcGCKgV3I
8sOMZPOdmJSBHMElyCOZKRnyuioB9Ca883jbRmzSQC2MG8td60ST8OlReNEty1MUtUKc6Rrehx0D
HeJHgBckjB7ZLwk+1xrSXbACcUN1Qsp4HC0LWLgukBVYYz3pG1P6NX2zygBxLX1NsbGWtZmzjFFP
3Gy8PMI7t0dskz38EGmhQ9EvcjC2RaYugbIuTwojjM4acrlCLH8F7Sq5VcNhNdrgcCmBzZkuDvJc
WE1/ocR3g6WaadVCV6oCABewzpTJebq8QzbPdG9e6xY+LRYK2fYL3XrDOYpcZld5U57pMKWfRs9v
f6TIPvGSRZgZqmSEnALyWUk9fvyBvz/i2OWXfPEbJ1Decc8zQrp68+BhSi6jUtSE/CtGzxOM4Zvw
AL7axQN3BPAfjwRqj/22Lt3hweLQn1DXlk+JPBX6dRJj7C+GOe9kHcmBt0ZBbb0CNWy9TgULxko+
cOU1GzrVrT8E6YzsCa/gRAP0O/h+bCf/zNhGcDICSKVWUD/2bDlvdd0sJDWIFDLWOiGKMV+8mxiH
uIbTWFETCHMTbB6Xl/X0guuNAwiIYBlSX2sPIGsZxEzRwG973JIaBiyXsYow3v3j40lfZetpiKXi
b04x9D1DK857FGib7hvakTGvrOIFv88VQ7qge5FIemdJyGQ0gGDA0XTwa4EUAS58GE7Q5sihztHD
jQ2B8hW9NTK5FUX0HGkHLMudmBFISO5+UeOsu5xTIgbzRaKL0o9Av17mF0EFw0E2OEVCVDoKGXZV
j0bvIE58gEMzCM+iZ2D4QPcg/AIuGBH58EfXM/nRu1SV9Pb7fWVL2QYJblZ1KdxchcWMocQwzJbL
NCSYy9dDqKZ1pPd/w+4fnvTEDEvnjxA5dJ1VZKbUKxGbalgL8tPCc/N1MYgm8HS3F2Ih+0OfvTKA
3s/AWuV+khEDjig4YAdu3YZgp55utdT5MsbRTetIQZBox444l0Bm11vyMCgvQl2zDW9/CmHkoeFj
Y1FULY3519uovFCYdParI9fxx6GJYTglJXfD9xVVoBWPtGjBl8RcVvfWw92oJr0L2JIq6OibPytZ
eSh6bUd++mFwKM30LJc7w8+C1v7wRf6goPEsRQ+xFIHvJMtZy2y7Hq48fumg2HEs/4Cetxy/b683
wNlIwaEe/KhH562Ix+qIUB47GL/R7Ea3NshyTFhegUnUAsJ3BJZsmPTzF2gyVUyEqaN1EVfvcJcW
9ax2s8Ba+Kxq5vH60Vscrlx7w9UNqYj1pxs3f72DVIQjg3YoLhP1Ud2ZrCYnxwYqb2FqhG5EXnTh
io1vOZZH+D8pA64uajzGlG+J6r7gkZH9PbLuZZD8ZSxS7aFOcFdC0seeoZ2JFmuRNqSEjBQL5V4b
9ZIJZcLFV9z65nVpPM+4Xk3bbpgOo4OhoWEfHu5w7lThSMe6U1xx6J+ahoaHI0Bz6dmttu39zzC+
rk/QXrSD1eblZXhO4hMomfFLnzR/13mF1RPBOaZmi4gftFnqGtd+YATEqQZVXQoEocoj2EPdxcVT
qti8fEqQSYUa2IEQi+N6wQfXR5NzShcesbWgXlEXLg15XLiBrlebM4BSAxbQ1GoZmhTrOEdswgfe
5tJGX/9RlDRiLJ+xIQgyRv83kNT0AmqvIY0E+wuQ8TL9R6Bnm1BSnscw41+s3CtAjgtcg4dxwjeg
eRaJmllH81l7vAxn46FdRZEZ5KGZCny6IgTrLRYLboSNaCYlTwGH6A3bt9nDAkuLMccD9yrSBbXc
asHVmxPrYgD1DKaBU+XtrkH5slgCbzOZnpnzsEgF2A3mMw55QSNaxxrB75nXXY7x/DhmNDviMitP
XbK6BYGXPE0uuNyrt9OXvGw6LE80yJQrOOwa9p2PdUqBa2VLgkuUk195pehbegsvEmUHJtHRPFkl
OOTQURE6BP1O0OVxpCbVGDVEoD9acZuo/p9+TpZzCa+bDRJi1fiTWt8hV8ei8nn/Zy/ZrznqZyt3
U+DeTHUBydNIPGSpRbwFiYyMLJW+jQOfvZgAhP2w8cPVDDb6g159/kCG1LuJdeEEgQ7Peei04c5Z
cROanZ212UxYUNicgKegfuWjVZeYTL3tcdnKLbJwbpbCM+8ptDoZULkvg5p2omhMs7mZD4/Rmlxw
n1c8HxuOjh3gGGUZL71BuaUAzkslUh+FiVun/WG1ShlLCwkF0lFla6iK01enbVNy5QgGD6vVbJrt
wkWTQ3C0nSzjNBrG+o9yvumYNM+KCEYaCcLik3GFYi+TzW7u8DoDGbSA2iAiPkiLZj8BDXKos9tC
XLvpoTIAG0vQmgvub1xXdkyLo/tRDXebgk3Z8OwxVAKUngNkqSPnsABV1ZPuROc5SbwOi+apmAAw
7tvfxZQJm6FNUsbzpSFQhptCPZf3XCnJOKKHvsLaL/ahKZRYlOcWY3W1OAJfXeuTR4KyGuMNu40R
+3tJoltmwvlLby4mcUbdD/oT1XnUsNN62cK07AXj/Fqt8KrG4ECRI+xbqonKzXxyJ2TnOalT61K7
AacTsm+TmEJ8fEq3oqW+yudJhTb3qZGqd9Sut7xcJjBNeumi+5nqHoaIgABX67N/ecbyL+CZ0p9Y
BNEkG8MFtW/tIzXpHoryMmkHklslL+/3NMTfKHvUivpCwPdzyqzYb3HdC+p/Raz6Kg7A2Q2VoPfG
MCteTmZit3v4NaJDna5FqeHaUdF46M92TqqmuOY/eBxXhXm6OoK21LTjXDE3ckFpQKW42uoJ09Ei
qZF1Pcdg+PkOrQxvmYqaZG2eL+WFQQVPb9/IF8FRFeH4jx147wbH6zrNOBQ2uT9UcWXiPP88Y0Ax
1/lBFMmdzf6NWnammTCOX5EAkzlVdl6fqWna+2UDqJFwecCSk6VpR0me3SFmCOV4NnPSspEaloVr
WOHt9GFcreLMqAEqy3eSfKkKZ5G/wT8PSE0/nCY3gCIPNWpFaGpvqCbyY3VHv8qK7bg7dDhFxatv
iPxCzOppuPxY/2DU61DGcVYPUd4ZjiqJ5vgMDoVMI0GyMnYLyMX2J/pXjxZcFqi13m2VXzgC1MyW
2V43Uj4LIf7e5IyT0eUAWFxOoDTbVVylzOKc6hxeQg4xqf1RDHlGRT2tIghEHhUTaseqDqioPAWY
nkZsUH4zd8El3jxP5LuvuMQnc+2EWlLkRXVx0FF7lbsvb1L+Jh1bzIn10tnVX7soSviuKzgqkduU
zFso+ZuIj19dwFcbZ8E+agMdO0XM6Zio7dL7XaBsvltO0DgVkEHknyacnBwJq1r88EbKNZ7pZmlQ
30hKMJsFx03tja91utlrjuldWNnZiZFqLRMFPp3vAJddIWQsrG2jMyxH/ITpgXOQCsRp3mhWYiCv
RXbNE8kTvOhLdFObYLNUvbUfumEKk4M0pIRWkFhCVPd0xiNk0xfZ1krS7dhHtix0WKznnMVxaJJe
ltzF2pusoPsK8wujWXUUbWcOC21Zs4b1Ska2lW68tLTTSSQ8t7IpM+uYW93V0p5tR56e96R/cW3h
SZ86mDN9ERE+JhUBq9ZLaN2q1i98FwxWKJZOif5BfWa0dD03ZMsVU88sXBdNaOvkTLnrawoIuCop
bY4XCKrh/DpcSDEiAQyD0+5jo3ZQKrTFwKWFph+MTmSNmOq19TdXG2B6pxN5lZrbQXaV2Dy4mssD
lLSLg+nI9SE4rxaf6hAioWa6AZelB/zHRwHB9TxGzpUAZoZppvdYcjU1McDWSmgC6x6MfuY8a1hs
LV2mrGKw2ryxI2zjiQLkazKzAbDhIzAc9hASXdCE9l17ngV9lJ1mvlOSuubJ6+5u4MDjBfNOo6/7
nvJ0DaPLrEmErHUiBT+qRb1ZX+Xa9HJchQ9mhLDDZO3Dhw9FnFWc0wU9NkHYYk1eRxN5QN1nyBZP
uRjzNLEQBLVVbU+ZME80xR6fqhOdwstXplOKe5GN0D4PHMpZkQcJr+RMK/9bcxQX8rn1SQU8Q7K0
5Kh3p+AIgPhrZlr9Z/0osAqHyQHXaQsvVpkw8VUOu9PxQkE7GaheNUhesQZRjdNTBYgtzSFow8t0
j4HV2hoggZLmBx2Jh24RHWqV65sW8VrTraMgbfUfZPdqFyCV04/ONB/IYtOqk8yscwP3SCJbKwac
xv2aJbwV/KlE+LRx64NEpOlZesDLhI3+jMYLsPzqWk/DSbEeJnM9Xah6m0bsPT9fNegqJxJEsYcz
ELVnMzmm17rs44Uc+fSxf++ycMDfZP3JQi3/jLF7NP6qk95QLymLbvZ2oiLdTJsa14eAe5bvgFd6
d4N2V6idJ6hVMVwu37EXlM8OVe77qY7pFgObTMS3ktRnY1F5avzlWKfGWtzKD+CjkgxgANkgiKOx
nQ2/0GjSago/xg0tHDXWb6QE5aVu+vlNo8zGQ3ZCY0dhlJhnI5ppbw9kJZ35bJUFLdgPbuHJxYWJ
1swj5YLYMpxhhwPJUYhXVGhuXurTOD1J5I8FWkEmCEc6RtVz8FAVEMp1XkUvTBPMckSiSOSRz9Sb
VoQlpMSuniSBACDKjOuqR3SciHxknYD41uVt+eKhwbqDGL2w6TvXdl1pJqHL8vw3PLEj/rB5B7gU
9Ml6EjDyPQ7QHGP2eEqB8cReyXEnP4Dfqf0tDe3JhkbwqSJLvfb/4DxvZ5oZcitaThDtLkaV+20P
39+PndjFoXFmJnr56l/jRSbp/3n3Oqbf+5mmRvlLUdxKAwfnE7jLyivUoSk3lo4Vlx+8CeIERNNY
9mc67V/wy1xFqQyHrSKFPHwuk2EwFPgFWx0c0huIK2E9c5TANI1A8Vnn9Kttgk1AuALmoUDXryDq
i91tD9NqRlg3trkYu8P4y11PbIb5mZfmM2fFQMEzufvnlsy+qaiyKRjNvn0CLfrNreNIEejC7PwT
vOGX/OajR23Cs1C4UFRO+LOBAWWwPjwuyt1dVlXV8rhvwbYPHw8m+NQN04XFlAMVJks4TydDA2fU
w3BpPSWl+pLMcm/F3XlXKA/89yLIhGBuVQkLRkeE3gsuT/kjcc5NGqAvwbPuMJ4veTYYtORXCDd/
UFbWPRz0bMGyQ3FRjc4FHWJs4ZdmWutqjBl3xwV+hZfHZAZ0nnf6kR/LJ2hCK5kBF8OsPnaTFtBv
sAcdseqqVT+ofza+0DT1y71kyU8QmmUn2MfT7OD5hGOkvSTQGrHWcECK2yGqBaVxfMNrZhVwQcZ4
GUhpuJvRkxnfO6Piwo8zPjAlWFFvtqov6/WMJQ9LbUbl0wC5e8FbDwB7+Jh6TEOBOaQIAdW8jAFH
jKYzkgRMbT/QjATjPKUStbUPXJfp+WgMiXdcjnHqDTijsLrF2JKq0gM/v8zXpb933PHdzPd/SrIx
tAQ6d80A0oPQxM5KZpNRNHCUhq7y5T691AbdKwVrKaj711q+sb2IrsZHbYZQJn5mMrXnc4nOz9lZ
wIZ23EblWud27sNfz4xOnexw7CXlDsMi8z1h0nbRe5xb/vkWeo7OJbVhAuxGe1WDESgv3/arD+NE
IROUwQl/gwIwGp6XiMy9BhpuN/JnkJ0BvQhf6SCTWpnwAoF3CI6/mre+BdkMD6xYthtg21bso+3g
UQsEXJbMkVonhFwYSZ9bD85V9HCplSjbF5/Qye0VW9oHeKwhcyXH4XSZfjrLjK/XkVWrkWKZyePg
PNfPEaEyXC6xK5UkFcW9KumKMljnl9TZpjL6frEeJ6SDMK1/5wzkY2XedEv27MGY9RLBk08VW4Ix
Kxnp91zCTTEpgB8+1auvKlJwluBQE/oKO4lX92EHp9kAFmuYUhCblKek7rh+q8cYXwThach8vUEK
iLesdnWpQoFInYLG/jk9MHLVRaygE67i2oXk4jWaLHj3WCT2RTMJbPWjjxKv++XQ9iroUJg6iFG+
QufsuZcg3kjuUI6V6ACNyb/Qw1mwni3EkSUINGbWPYBjDtMh2DFHreloTZ6AAeVWt++os49+0n+7
XlUZUVjugyst0secf0YlaVXaYsVts4bCqXRJfM+BApok11eddLgKhVWqhRfJRYbdYDimBSmHigFF
/HZ+b2pryfEBKJ8vRHMTGIwSKYZUdEgMD9tb812PPjH4dp8e2XJJs5nvm/zZ/0/q8gB6lsIKOClS
6L6Zn1tH2GYl5NmQ5Va9bRRu4eGScsbHpHP26T87nd+XY8O3Xy21SWI5YpnoDJ8cAtXeaUqS9tXR
UmbJOeoQhTRE8KyVz7iKR7ZehGsKZde+LDiAnk/1j1WCFUxCefncDU/jg6Z9t25ANBYqNq2Guasu
SGN7+VyyYDlldz1jfUKPTcWSqXs62YOplIT8awXbxfGUUEJZa1fXRZlSmEH2C0B4bdSptO6GtdPw
8xZZpF5oUFi8cU7kIKdQD7k/YL6SMzw2ZN97iEbTFpmI5/tebabIZebMctATI7CMN7jk4ZZnKuxq
lEboRzUtLM+u6omHkjPNhUEdmDu2XH3VrK9xI4BG+NNEKQiSIsKMT7v98c/KQ9TpLedwzQJwBDs5
lM8Pr9yLk/2d37bUAnXji0d8IcI/aL/CvY1bEKQXYopEjrg0Y9f2kefVi4OlLdSOFJt2FN8gMNEx
jEBZPYG5oQ6pUHdUiA4xAS1c+IUsrvvKeDnrJd5ZEGDzopebcMLEBT9LNUYok5LnihXBRoLTmPQV
RlM2K2DDgMhI/csKpmyeC10kWocHaI5BVnr2cIgFnFsDd6Af1zbjvwHcSupTtwhpoDrMaYSMXCoP
ai0IFywXgQ1iQZ6XzAWe+9H3AHZO+boaEk6Iy+mLYO161q0UPh4Jz5uTewZogXYFoCgDpLozjORI
HE73qkWvCVL0YP0ZDhkDOuAfS5JeCKsglpndSWBcxTVGcdY/wbzM38vnR+enf4zWYKqdhAaL/cB+
KiI2q/O8qxPAyOespLWF2efxGR9dm+aZXcZTA+X6T0BCXo97up5qGpoa/kpnPiVy7MtO7f+ibX9L
J/oy0z897nr2Erhmj11Z1hFq+v+q/FjF+jKG2w3pSttY9GDIEus0bQic48T4kP9Fd13K+ENii99F
bS9Zw1vzECqfMfircsLBjK4fsV+e3GVVJN/o60bM3EtdIMtSh2n9/RVmrCVWaN6Ho6ierS1UbTIg
tRFhkQvyWuwGA63uwFNvIXLN4nWULLPwwXALgQhJW5e9b0YLcZZJlUa16kgzuphCCwXqAY9YP4sw
Cc7u4ZHgLsgxcufecEUhlNkjSpVwfF29kvm4iwu66w1Ikhgjzp9zWaCxO5oEl1CZt45w65l9Cwgk
pZt6U+un4I8A5lvkr05Z4GI7G9qTJxtYdDCeJXhbfe4/pgrQ9eV0uonhmgUPL3RWT88dVJ7SlSOy
K7DswaTZen438ZnAHHL4vmG5KaSb74KcopTMfG7fyeGDvM4d8O3jRcbdvW3eG8ZmGPY6+IIytsiP
h7DNA/27mx/AaSistAAKiDGuEG9Hh/XO+QvDX6OFOn9hGWOZz1kRwt5+DLYv3s0mU2cU3vqdOyv1
IFklaZOgnIhTZMk0WgKtU+vy6MZcHCQX7f+Z7okiD85PGD2bTbJaFEqJR7MHK6kVuK5W12Q34jXN
63lXGCu68RfgmLEGIaBZUfXeNwfRO7za4P6cTCe0pyel85rE6avYE+6tmIF/SwQCAU4tRAccD7gi
YC5l/ukn4G8+/iHu1OYJ3DvOHbWxZR2cQW7i9YKnYVLS0e3jlKekcz9eO154UOX+xGRLZcoOgWC3
XkX2qGh1v230vAHI8tyIzjMcC/XuVHyGPOP2Mjbiob36XrznpFU0TIn1MKlJtZv5WWpYE3xpDjgW
0ZqplWOcRiqEO6e9jWUv2u9WZr3bzdzO0cvKt+WjGgDytoocShrQHfItzA87ZBCQLv2reMzSqKZp
G7ekapBmX3Cnn0vA+g1ImLDVzRexyAbT6T6jvdo49JvugwN5c/Q5LOqXOFxVepSrYLtTN89dseNC
x5LoY4375eCj8I/rrjBjfBugscxqdtEPkYzsQilWvlrBO1r4BwLhgJcxrUyEwNi+d5Je7LeKFdqJ
H3QDCRJu4/p4ubXOkBDAKpCPfWPVmbcDLulu3r983NLl/rzVE9iFZ5fDsAp1e18kWlbH3emEmXei
W3dngX43GAC6LIYOPBObDOc2gZHb3B97a/M9AlEFh9cpAb0Inn59RvQdsxPuBYCnQVoDQFtBIF9T
d6R+2QxtxIB8J6xhPM4OYdDGUcYus910O5Gq3aE//49ENw3k/3wJIAnaK7jjNxbnUFn2VBbbIW8c
2leE+DjhFbrr4mSiqVQCKrTXN+YvJ4yeL76bzmFqFE7a6oKNzGiYWqDB65gcvGaG2NBPSYfUV2Py
vnvedlujcCz6eqWd/F4zJTfemnla3ttviWaLOvVRD/L8wEwSZ+9tnvuf2kVUdihiWAMbQq6/SA60
8/TenUNKobbkP2Q8eB5VIgYkZKe25QwobKtx3GX/lZUckOm4NX2yiChPodZrc7jXKKiAqpRroIoz
P7J3CW6PYnJJfFMaWa/BUvYwqWFycHRCcIdwvJRBVi9/BvRpf+mIYhzS3+MMZuGleoGJSKaBBAw8
+wllTUsMzjj5ESHlgsyANceYhaOaSDgr2iuSkZN1AguqkC6JFeW5U4pBNqb/sF2gnnAztbZyUMCJ
lo7SOJePecOExuAHy0oTEiRgOguOXVcLGS/iByvIyZgWm/01FT9QHmBsQ+fU/cvOutR/Qr72eh+D
EidTru45mfuE8fhzXNLnS80DdCu6StBpkTg8cKsNa+zasnqgPctk9uZ49cVNUbUAqRBU7IY9Si4+
feAutEhWKhp2f6QXG4bfW+gqtaMp6Kh1qDa5jbWgVEZAGmAMzvRtR0za3CTNq5pcpj8BX3dG0KDf
Hw/gjSKyguONURH8Tz7BUEOWcge1dluAUyQ9dGAy9uSmEf9Ajq7f9yC1754AjjdXu/qWf1qhgEpQ
63Pn63Q95A0ZNOevN0wtgr3IkAaKEX56Kuo1CNPUod2wb3zI1RQ6KVoLHR6xJAAVzuUbu6O4+bpX
11XaUAen+0wfBVXAi4SwCcbEIjIU2DNocp3YLcL6jHCPxEVYTvUf2CEUGlIoLHSmvi4CuwCA2tu9
Hx8lALEtjo8/kHbfAHesTlhSeQkcHt3GgBhimzGnYyge4V3gW8/l5XREHJQ67ytar3FoNIaedI36
nCE3m3qtzQM8BSIcQuegfG2VeWsMcG6+ESqXdwDsb7jXV6WkyJnWJt7DkHFWC2gXOUzsO8PYm7Jq
fFLQpfDpTkT2ZJDdXsYBwuQrb/pjn4kdZ56w+Zr35y1gmahwA7KqFUX3ZZMW1IiQkcAFyjjnBsoQ
UbG+Bspp+rM3uI8mWjsca71xMsW0zVH7KcEBY0BS+vc28yusoiiRTR8ua1wHEzUdy8FN2EVMVnmL
NRRXdAXPUpfuqkVt8HdUe7/lVD8AiSZTHOtGJecUpoM8es1bkK+bTMVbIJNPgyKzzGpQiC1RzNBl
b0Dy99Ad4r7utktQUp3u92Vi5QRCBHJNQzXwdoZdDV4A7fQAp6jUWAEvhaq2ZNXz9zha94Go+CxR
jR4ESeYIRQIzdPezRb07ALzLA4M9aGpHvYXCkaR1aPHgAYQlNfYKLAOb/t1yrG2dT0Zo2cwUQh3x
nYDSNlDLLtvpo64lyYp2qxE0dXaySeglYHF6kQWfZ9H06QYnKwNKMWY2qdUsQjJDz/jEXP6Jl0BM
OcCfVtNQdw+FnVZ7xFWdRZe23K2Z9VZs8QlP+0R2V+y9fcmQBY1I7rya3/U3lOiyhjuKatDj6ChD
TQDTjAK8dX0mcsFnbYHzwNlCaKnSZISw4MEac/ii/O3Bqe5fBCLMgL/FX96ADsUD4l86fFExxSeO
t5l9STflVdTAKcx4MKThczX3VAC89HV2foXkMZ9rsbjPt5Fy4YbOqJ5ChCf5eKDatfHVSqlyU/ta
hRjob2ITS9GkP7j5VsFfpIs9w9OE6LhhK3QY1j9lLLGuXVhJlba5ZVohnj849+jKH18L5hH0+QGI
s0MKv4cHqwvtfDXCRNwel04TaTys1XIpXoigWK5k4bdbVUK4lgBSKqnH1P+LC5OADXoTRX6sKoyf
CX5gsaiTqe+2riDI/NuncvBs7EZjFLy2Cx4kt6dIBl6bWNwfZcBV7kdzSv21oCtUy/WUkdxXPGhy
RxQHQMUXYBESE5G56wIRHlkLCNd7MLXsTs4Xuni7s0Owk5j6jjsEBgEAxtQ/DXFmB3vZo8N6+FZy
fyG4rqAzKLrHioaziEwM2QgRtHCu5Jy5ADQPEQ3mrAK19cebAAMTN7ey9eQ9KsP21PUS9EXbEMf5
O6ahB6LH7qZ/fE2QdH657OFl0bI6cQUV85O3yJZGzt0KeZE9cHknP+MU5S9DIX6l6Ln3UrlZS/eB
sAjfBXabPCXurR3r1aek+vdPLx8GNvjP+7XBGWm/HGIldJHDsz7DJjYAFqh57Ckv7o0NPamseAri
GYtrSP7DDMrqeYcgaR3fiTMARIVrogptsEiIhCqtTlE5KQ4On1jJuqgwYu6CmsvNmc7LRFadsDI8
CFRGYJKx9rDUrg8nIkpOOw4TMhJv0coQhAklFavGYCbkZR7ywd0O6yOLLqFyO/h9ThpYuO5GF9xg
TKFa9YgHDZ4FrD9y+AKI4be+CM1AYBzNY26LGN3R5amLAB39LwXQ3jY9i+xdx233PzE4pABdGz4W
93mGvJuv2jAxm1Mk2rUWp7AeO1BCYnAVGMrEH5/RU1L4f/jm0NtuzW+JNzARIeuPDqogntBA30iN
0ZVDr/Jp8RI1+jQgxIjQ+XCJNg9d7h3NsTu5z1mZQg4DC6OboaEB3FrHCOV78EfmqnBDHhQ5POXY
AUlYIWyLYYDpB2Dq0rgXxlNzyLs6RY3BCMZTfghYIa0arRlGdx8hHjX0KLsbPW19t6XXjgpv/fJ1
eR3L8jBAqRahhaixYRWDDCVxUJutbcym4cHFA3QS58kOoTXzDJDCw8bwxRe7G6PgArGT+pFKGkKM
barRAXOGPQanpviKtmUbO+cJUyya8QWiqAuztze3PXndPLMflECD4Si2LLAESXpGceW9S8JNRmkr
ii8DNOLnKXsHANLmAL8wCcYViatHuscGHc78MUhJEtEA6n7ctEH+LVKAm5tE8g+vx8BLgFQqX/F9
M9F9x6RBbYlESSMjf8rJBZm69/0hVTeF28lf3nZx7MOl4OsqVsErL0aiouhL0XQEcA1x7piHGAok
iy0WqHKvziT7kClQRVNS5j0LsfhMcPtEzUbcQwITD4h09qB0cTECMrzYW8fTDOghvjs6vShLchdm
3jDyaZFCAr9VyApO4sfbs4eXDIJtM98YiknnmULuytxgI9ZOzDXxcIhnMchhsCiuR/lnDNXzckKn
CagUcWRej+A1m3eC3MlYjDTWL/jD83azR62clD34rWwV1NuOz8dTH8odhaFpicJ3lnZiE1cKJ4W5
DA4LHpRcYeVryTKacDXlRtMNKyUGrvSGnuVJTX8kNaGNSStzFs/54Jw7skaNK9xqjWDYC24JwpN0
UlAcS7OPzu/axupLkRoIOmx2iKy9unFUSxvs27ngxsFMAlwCozlgdMdtzx/7NtviW+fJi1ngr6PE
umWnuvhj08XzVph7p8DFxOdr5d6Nfow7FcSU8xDGJqaH8SEw9BatIjKcf5/ayJTWR/gZHNHbxvnd
CXw7WZGOcYQBwzxnpn8a8BPD7iSJbg5ZPabbqTlJlESK97EhjcOiE7zyCI/hG/vYTvfnUvR8DlMb
hJgRgSjM6plXRz1OS8dmiEBVWaI1vPe4PCu9N2OuPyYFcirMZsNwCeufb5/yIuT0hvUjIbfn/Ie2
9V8K93W0ohHAUZsNTL9r5aNgqUqxp5Dvo8RMs/yUbdujBxMq23fF62j5pF3wIjADNJchdc7W9Dm4
5H8gG7ttu4kOUAz7mvNI0xt4SkYjGVAVYZzHJZIPme4WxHwTnclMdpasmhPn1tkd9/UIEnhtWVkq
U62xDBqdQ4C1BRz8cvnEKJ569J/f6aQu+TWcZtfxi4Qjkb8N657xdSwnusgKnMmHeud/Mp8RK+sC
Wwh+gquC8m7acY+amfz+Y5yJpZbo16hkc9zz/kPCPQuIN0iGuvyBrc5SqPOCX89aLJLfhQjqJVwm
T/JYTWsqYWuiPATOh2mfX3ocJnKURr08dIzVIz5vxtqSSjWXs7qcB6oYnPWrtOCOLiACdV/H86b/
B7egHCXh1N37SnIm16zUeWJHnTqGIC6y/68/CgZ3RpFxoL0W/FAFBhYcx4HwhoQW5wTbD65s3uB6
kLOrnUoHDH19MEsWfujrz0B27p+wQRQ5PMB1EeKs/bUoQF4GmBLAOGD+RYq7kT0un0uI8+EH/63D
MGuUjMYdSWhABQCCowJWYt3sgjvu27mUcYHVH/PM8BSeRvtZLTwFj9hC76uc7zBsB/Eu4WvoM+r4
gOUSs8wN+k4H21mM2zan4aoXl9eTq3IcICAk/tqBjyHriFBTK8CRzQ7ArlmkKP7gR+qlaQ8n3dOu
Jjph3RVuDToZ3IJQxEn5fbG3DxVL8t75jIUm3x1QyqHRlM/VCmniAq1epr1PlJLkZjP282bGrTYl
BLcFuapM5q963xEQePTG2Qnv+Hx9WEJy6HRjrGe6SUxGTVBDly31/rD081wVBkZBfbtj5fBoZzul
pa4PmO/rjETiCsCUapaajs8lP6DkqFH2kEwYZFN+6tY1MfU0OHCjgQ1DRufeXyVUnphfSqdOvBgy
28+lHZuZe3wLLFqRtQa6tcZBF2fnNX9OwHqek8HriV9uEn2dPD7wbf9YyTl2lrm0qUtnXuvAfaPt
bCvK6i3X/rejV7eZQLuyTcT4BhLEKl2fs6c5kXYB6wbMqp9mHUd9P05ATgcMZrEDGihSbwSMzcLp
eaX71HA+Pwivt/drAMFVcyxOhKj7qcuiovt1pGEY+2Iz+oQ1cZ/HQsmi0VuMDoaO7ij9HOx7iT51
pE5oEsWYX3Bl6L+BNIQWyIvPwTd7EbSFVvhMXQZe0hcGig50rIrEgKRMnf3JRf69eCzbbKcg6S1p
JK2WMQm8HZqJDwL+ayN1wKwbKTwA3YJO/nw09fyAi7Yp0liboeCjl/XbQqW7EZJN+8GmkyuD8OnO
7eGRI1HoINdob0FrP3Wva2edf+JWn5w3KdpQN0lzD0wtUX3wUL1BmS298r8f5vTRgpTkK3uyx5dh
4An4yH1hkqQFsGdcQ730Wm0yenVaRxbvtWLcT0ccv+InkaQwa/L9lL8riG4GsDXlWFGkF1aXqKYz
vo7hiNLG3unr4mqBtPUkKhun/YCMgelfBjvVwyCFWdmSiVo+h5JBXhnhFI5PTAEwovyl3vHXZfKu
NVm4EYNYGKV3faSVae4XpikEe7f3ULxO605163X/QaX6VAySrjER4TEBSjVHtcU9M6XoDJpcYR2O
kU6J4e2LkmyfEcuQ4xiQhwoeOi4hpCIf9aZMMAMeCPzc/CwmrNzbwqM+WCr8c9AeAk9jMqOvCRS3
qXM4Q0qUS6wkns+p9XNbgxzInbOblATu/OrD8dJ/NzNcNFTvKs+5OFUUN2GZSfwshACDvB3szfHg
U5ktIgTGWDt7eV3DkHL2HkPMOBw4S3zXwhGKTM6QGotN8P/Wm02BXy26mY/WaaXHEtPV1fQBvlLU
ujpXQkWGli1b4N6V+eErS2/e9TXXRay3KhrSTOAoCJORA//JfPuoqgbrLnnUXHPRAz9IClV6Sau9
JF29PbFOpnfM5hbuSof/QFvQkKJe2kvfHcqU3h50oDWkQ/7c5C/xvA6jKZYvONcaozd87MYIE0oY
kR/DZXFRJ45FXSZ2Tv/S/g+gO8MC6dkiUhFDvIV3oZ8DLRTIhIXJ9aoHj6ctHa1etOy2rU6cxZfg
EQ3fxBWGIs1cY1IiksdhQc8iEsgpcynpctX1+Jk0V/DcdTRj/p0vnlyGNADif+ca73oM3x4tFmi1
VJm8fVhRG6y9kehRqZ7qUGRiSEwAckfUeG4EqyDXYwF7531cNh1mU7E7y/sZHW/PZqHQ66r2RWNj
rQbDR0Cx6/MW3RjHi5zh90g6X43xFegyH2c1TBgTWlsIlJcOashtKvT0CQOC+rfMB649egBPDFw7
fA5thdXpP68Ju5IkOCbpg4WJJYRHTWrgM0we5DpRbJPSgoEuowJ/919+pih9thlJmxTLnA3GKqMf
rIzvVP/zxc4Guw2j9EtOYFOJfe9IA8DMZDq4F/LcJyFVVHxZyleNcXlvpr7Hc/HaLNuRSnW4WgRE
bskqHEMsIDWJhNOo1F6Y+/n0ffnduxFzz2Rlegkbv8AYqYt7YiMDdpIjHrzxOo0ZA37AINwIAX77
3mQPbRMs/olcul6Tuc0fHUTMRj1vcURWjbGXGvC2y2iFMuR3AAq3pxyZBC7r98wzLFRoRi4aFYK6
DGoyrb76yZMWyVsZL88d1+qHaVRzKDFEbmx2izn+6B26glsbUyYAmsrQLsCHqbfLtehs2OMVB/Cs
UVaX6H2HNS2iGpoqxqpBc83VKl9Px+njwU71dcb2Km5f5lmnVAmIvQDFwjnChDzIFMMN2mj/3Csi
M9Meul4mo5+tiocQ7JsTC43tIG9k3GdtpwLmElGEoJ6YzLxl+BAlaq2imPGw7m2Ehv+9WGW7ti95
Lpe22g/huYbF51JLZpoL7qAzpfnE2YEjDB4BItO+9DxZmEvVurbbv4Yf8vzkAdyPtxZ2BiR3VbJz
hqocLitPul+wt0ttrywFx8YUHM3LtWdIrGI6qZ5AkXt14kiv9R3SLEpwshoiCvUvsurgJM/6GtHy
GG2RoQhT7AyP43+nEBzGiq39kYxI3lv6OlUtgJ7aYJkPcIjjmqX0eFk/xxMQlAyU1ptrms09f1nU
ZjqdFxkfSopSnaOCqVekyGlV3zt+6wCMm5MOwzovW9UZR8ZcyGF953Elbbk1NiroC0BmXoU9Auze
qc7V7il1/7Sr9iizGKg4GELem6YqCvz44YNtSWbwRXSmcV/7STQJ6heUUUurfDNnriKFZ/SlWyjN
0csZ8MA9fna54WtPzsDpJf6IsG3OdjUIGYgS7s29gVJxWIBHkyLFLlfVTNsFWa3L6KzMJojJfoNx
0sTqKNja3oVJuJMO7A2vWYTp0g1Nz4KbxF1h+YnUQo6nU66FZCRPDZlftUfIVW5YLxjgDr5jAmBn
F86QCfyK+OHkcX5QDn4aXoXgp+Y3BpWfLYHYPOE/iEVnci7ymR+X0J6qkffIvuDt+UhcFqJOhfNg
O+vbVpCT9k4lBymkzMQKLBPIpLgdwAqhTnbvpfgF8fjzPG5j62gx5jd63Rl/5dTHU7GaJN2Ner+M
1O4Qj3HgUOiXqKIk0ncwWEcOSt2aoH+gs8jMNGo7TLowSWzJUq5Va9g7rx6OTkb5llgAKQwLu5e/
XtZ//ei6pzsgh5vMfJ2tBM7JPcR/D+kdJF6mTUT7AFD6KDUi/8fB3rKl5amv1J2ORiL5+Q+gKbyR
P4gJkQ17BeEz8Zouh+aO3JxVQFrYOxm0q4u53QbH7W20BeZD/PxjcNS/yfHvnIHqaCHWmk22v373
N8Fd2HK1zgbmSYbrPgmSarnWrZ0kvszhtUTXXoGbcL5m6J9wCKEUMNnJTfgaN3pznJFJ8Yl5J776
wcAfwIG8Dbi/ggsDqaqNe6H0zA2I4CVMJ0NJUG3Y4Kw/vuGiR8QFGtGNTouSsQ3WVExC161ql638
+B8i4FsbgZNpx5MJ+MaLZxDkObJ8yORexOwoOEuzsAkN7WUD9AgcjPMMAjCxnTCZmNhWtq39ldi6
+9Rs9QtbZoqq1YkpzPXdSfrwQwzD2VFFqeoyz6j9tdLFTugyTL4xPVsCbvTspal17oIBW6WAqjhE
mCPiFxV87GtPd0MqhgE9P1Aa+FWnj6MUepmaRS/MOKJJzr6Q+trJls3DYos5Ks12FJbsCVQtN0o2
wT36xgg634scO0SphzRNOf6CCM2XYORxWaae+FuWebJogQ8TT034DrWKQQ1i8CK6P2yeYH2Y7F4R
bOY3+a/wo2ommyCKRPWwMhhYkjiOYo2N8sQK9DgHI+KW/t2BIductDy/XPn4DddtQvSTRGVL3GbV
deyVuUiqD+jRZRyNrthzB8oOOqDOyfnIp69HHlHPHmNOHKSAdM4S5mlQF3LLDX5yPCSmiXcPUr39
/2Fv2Uk4UxKopSFXpIHGp0ySbfAPMauAw1qhXU4ro4ZRzhIaoOBiWhb7Fv3co8Iep0Y4JItADU7n
sNw78XclOZ/pE8T4BwSKwM6oSjK8bMrYMHLqdNh0Q3BD4iPi8NECPg69Tp3Cw5nB7yn17h52qTW1
y4qBzikJg7J4s3E0rDAkUifgvfH+ROWiPSg8wmP1TZxRzwoTSzHAHHph/4gzA3lfhSN/e+Ti+lqi
amsDvU7aerJboZc4Mntcshpjyi6kzJ1ha/5co/tINBtW2s7HUUcA3WhJ06pui4WrGOddNM9/D12w
Y9T8TN1l/OoLadLB/Cs+3+kwREeBqYoqwYq2D9I83ZRtLSZnLrqK+rmF6jkyyg4FwIxaxC0j55o6
XgFSz5YgXuvBoCoECHwDah3IDwS29AKzgxJZ7Jq4uDXpyu6f3HAXELeqLwGdZ3YkicPKaoJOofrx
BzqFF9QiaAV0OZokPiiVBcTA2UFaZm7tk7iQk62TNuMHGxJKTtdLk1RHO1GqpwC3tA0wInncOCv0
ZRHeI/ekvcsjFO46zLzQOVTDt0fmyq89ovYa6WjBUEO9gr13vSj1MO3CbIig4SUSWQrcwHVEv028
Me0uupWgMAVmHZa+cLz3S2+9MeA5FIKAXWrE+NbH/fMWWE+t/lctZGa3sSilFtIBtwAasLNeQRUh
Nriv6FPBmY6BwolcUNbU3BGsrF4j1RbBzGdo4yBrP5PZlDFmisbXjtvkn2V84cga9s8YYeIeIJcw
sXiy0Uw3oOanlZa6oAqX0tfnO26DYd0J+R3BjVyOCkOGbIWDpWJFAwhgpSEA/DDxp2bZ5cMUyOZ7
u61gCs+saBhT2fH8VmjLgA4S4b7sboWELs998pRZwuAimuyUAOyvRDNiIq8YVFmTtip9HC7QpbFe
LItEi1aSHhz7HTcNsdhhUSgVA1LcqtD+QZLRFaD9wzbpOb81vzEB0Q/gcWQFcClR/17Ld7T/mKU7
frw9/UOL3trGA3R9qMzhPnbPHYMwySYPwB6s+R+93PZlgiwaa58KydwP7NeuPOHaR5HQxkah9SY9
+2P9d/9MUhb5u+ZuXuxmhYPEG8vJvIIXtMgrZGCs572nqIA05DUCbIGYSrrwrgAnre46mRHs4bbB
y+tl7I1vtMPo7CEvr5rttJheZ8rR72gA8Rsb1tYHYK6p4fwNsQhNBvhES1nlWZVFNPJiJEFsrHbm
Jya4MwmPSrrra9V9/oXH8UhO2I4r/LJtrggltxH5Ph9aBa4yW+Jqp3401KfwO27XpTf4S9qcOFku
DjJZn+PPZ0sOWu8+H9RU+VLUyj4VeN6mmW5BCsmd9PDmX+KPZrv+UxyL2uyK8E2dFLM28lR5iSjN
rW6UX90v5CIHtNRDjqNSBC2H6JSi52OTITUcXkiX87CeZX8bz4sHxWINH8GgGEu8FETW5UfXlEHE
R8MuiTQA1ZIqbO4+CSN2+1xAmHhpRVSOGMvYHmk///0opaMGVdvPaC1WjrpWgj7SQiHXmW5XuZ6l
ytBjc3tOXlPJePYd2EAqflccHls8xN1+vlUFt4Bi48i//bE5uvlFywwWbDlzJjH+GMswTgbXgkX7
fF55oK5dW5SWFPcyLlaMtExL0Pj3i3dqhf46kfeG34LsKZgo0HuoBJ86LnVdMWSxfYUn4T4wj51w
hZTiJ9jU40rJwRTc2PgGLL4avKqSjaMENy4tYaA23KkX6iVF92mSyUf/r8cNQ495rKQFDGySQcUN
Vo+uf1tJG54fIS2RX3iyEPLTWz3fzUJ1S0t0uz6kNjmdRCS/BLE4Y8tjjEDymbXg5rM7l3JW63ar
YA7oVFjZX+J9rSLzkAW7YR0aOOv5pW4l+hOUijx0NYqgEj1wK0nGr6lHhkRHztJ0mQpiyAbyxi9w
PtkNpvHWnkAIzIDgi3lnJseTYu2bG3XoMYmAtjhVVKF+/YFNPtwmfc2nV0bpi/8IgHTNP/3D7J7b
JUi5yS83rIcFsh9VyqLOr8zwyvLDmdQykb76fvWXIwXZpXUzmapnXrO1raeYMpNu/uP/iEUZARby
O1vU9/OaDMYHxYBdYxC6vpQlv5J6cDO5SUwayHBk8IxNg3yTrnZhKfF1putNtI8lII5Mn/sJU/+G
ERkjH9F/xhsDjcWzR9aDnJYgmT5tZKrqFk8RHGRWAASBV/4mXoLlJIUQZ17oXWGWt365iX2z/VqT
IkjcObnqILf2SlEKsj7lGFEzobJ8gaNnEtAaLDGcuupsolCTn4UOzA3OgElInmPNeSoAeJD8NXnR
cJBL5pdPGxX8OEZ3B+x45bDel6rWGvtdUaJIiiJ6MGqnz+xAXK1RSfnYC4K82k87nWYNnGsuLjDH
c7kDaJyEIRRquvidbmnN/QjSJjKI5V+ZH8Ik1vEXIYujz9zEJ/ewtGmzvMNP5IzIhILtdmnvRx+3
ViBujbV2M/G3jg/iFUDs+ZtDnwjfShxLKMxRhCqHmtOJw08C3GEStMCJgkKcBL/ecLDEjd/ZT7yV
jW4wdoBN0RIdLqjmZcWZYK135w7O3rKLSE7PaHaFueJXQem2zwnD/qimMWZlZ7wg4rxH7hpxgmT2
uWtP+yb7WpEdEmuFXSW3+KVDXqDS1DqFbkZDTfvxEh75ahcjob4WsegaDOPsnAgAbrUrY0dFwRyj
HO9/2d6zJJhAV8dN0QCSFktTInrxR86ICat0dQIOftN8jU+d6NPlFN1V1x09NZNWmXVhm2f+xo1Y
2ZSf94UyHJCU4cvoFwwWBqINcTuxkdj77jQTwdfIssZ3TTdPVbpeoobsrNgMg/4ZRlAUY98kdvrk
+wyknTp6oDSmNqoA0eiO0sgSvItmJF8U406GqYx+MpSAfnd9kzjv1irfOYwmZ/ysU9T40Z6LSJ0W
14RowmtJPSKhOm4K4/KxlMUa1XLrCiBVRL72WhsQh9cGOLZgmNQ6Po7P3K0oo3/ihu+Ks0SRwdiD
FFhvIIkJ+qpIInWqUhH0QJn6/klvazBKNEsW6v9U3NXhi/T9UF4SMKkOqCCZWdwW/47YdrVuALt6
FQ3jw8cgvv0bxpUxyB2GcUzz++bHneEmM1ck5xnOca4Gtv6X23iwLsaPzhW71TW6c1Wd/mCiKapq
nQ6OAXdJO3it9SA374e3uyKangHx/kWdK5ry+1bxA7r2fL3lV6bKdFE03OpjM0Cw0xcVze5AeSXH
CfYWk79fP5AD7/4TFjzt0u7ZpvtV2L2hy+9v4i9chCLJcyGfJsJhmEFLo28LHbuIuScpJFAGfnb3
zu+2icv6V9w3vnsPy9zUSAgGTedZNoVSwI6L+Zl0nbgvhEwgTjlJcUU5p1rnfDsr8PGaEtkerwP5
kjsQcUk4pHvR2VsFF8eJsTbtc9bgIm5Q/NqRC+EaHiU+epfWOQO+Ls6Os7apN5eBWc7T+kHqQGPS
dRkelPcGFNP11IuGARMxnqepsuaxHnEBPfszhZofgXWbSWVJP2WA+gSVOrSawKMHeOnOPapuCoIG
2SBfuQ2BBllZJr53/RkeF0hg3iJKLRGVeDFgNUdT99xdcg0KiTmSSn9L+/Df+FBdpo18cmEp2V5e
1e+6B+BX4SJFL7WxQt3KDiymBzABoXy6lM7XbU0lAQzu3Ev755Md/vYHgOtlw082CL4kEBYrP2NU
lZR8VQU9E4W4wBeTaktafeLcE/IUIas+xmTsLt60ZEVOsstaZkJinOAeztYyBpzoNdG48UC7Asdn
Wuo/sQMbFB2wPQ6o9vUqUyFaJHSFM8wOFRMzRlbC4hqMaT35fYWc07ZJ/m8tlgwtJW18WjA1XttP
/94rpxqPpNX+m3Riz82OPenNFIZ+iIwmhjkivO5yrkJ8+bUrH1o+tO8PwePW7BMradDxmivVcVcg
bUZq+u9UIbYudlp4/osmIHiz43aIDBwMaVtbgi8uHJuvgf4G3jrfByEbQsFMBW7Ka2PzmrZLrvtl
Kj1dnuJoZhtDXZxGeuH8mJQnJqce9H+bR+Cl7/n45iX8pPMrWJoijJg13HHnqk1F4ko/Yihsf4vN
b7Fj2+6D/XCm5zGTzuovN7zkmP8H96MBSyxf+cSgWRHMoIfOJvkOrPebWrh8igp81mN4+SpdF++y
DTUNEJPixIx4+0F7IKDhiw8m0WBSWnOtK3MOEBj7FP+0v/hbxXjUpXm2XloEktu0fa/BnUnU0/ct
mDk8Rvoicnar6N3Yq1yxD/nUKEGqd73OBtqwq7SZpr0lq57r2ulh4OJolqF39yfEyG3NNjhPJuJ/
OF4Xn1Bw7HZNQmPWY0cbvjbV49pT/Z9uoaksQwV/s/z6L/eVQCuA4G30hy8Eb/Ob9bWushnq8DAY
OGrVAe+78SO0y25XibeIiA5EYdHIgnqEOc8cARY8A9uTunzgIrwbUxyHtXMgyu22sHgYaTNwHu5X
WOIICGa6eWOJU6AkBhtnx70dKpvhAiLScj8NfsOjOQVouWGdkZHzDpwxOYc10bD310F7ZqH5ApnD
viQE/b/SQSP+3kaWw0KkhuRbxGcTH3VmIHbZlAaJ3J9EzUVF+tiSnLc38sAHDPOvDWZfkP+iOoRV
xwxuDc0gg2KPa1rvKhKTAu8+M4q5tKzphPo3JSeW/iLb11SmdxKCdfT42OhE8gnczmn5KEVlF4zV
Wtcp0rcNSXC6tfI6nN2E7uOusbAVdEtk0l9OLtD9pu8V+A2mmFjl2/mO5Z23lftx4DBRP9pvbHNt
qYIEE/GYOF9quSLReu1YqZJGD/CJvpiaNNMTOJsj+4m2N7Fec7jD5hRa2F9pYHhavys6/duSJn+l
uaennqQKq+C7xOrZ7MYLX5HTJZjcut+C74oM2VaPAk0vITWKdQQE1Xkqu3VcA6rkALSrkSFaPKoo
3/S956TnnsSIIwiWfPqz+v+dvkxArii4wZ2rC0c/Mq67PmRHDUohC9TTjMX4twleV640UfDCw6bU
haH5qIhxiG5Rv8WqMppm6qaoJ0Yeu3nJsNnHVQI9kxKTlR1TI2+PfzdIOha7eyJmuxdbP/ReQlHF
PptFa4MQ0j0Rzi8FJXVUyJIXmWWE6v8JYusYZ3XTE1GECNHrerRMhpMIMu+nNwrSBqzTjPd7hw4i
2mPOvymVFcqx7/HW49QkcGwgnGunKQ2Ho8AZVgyf2AjZBF/IOZBablABhcGrOScEAQrY6y0/iEb4
WAfOX1Z686zzRFGL/qdcjaPJCuP22E4G9hqT5+j38N8Kx1uYwN0wl00STfN24dBaIr+AGr7D23ac
qgI9qXltWoypFPdOUA521o5vpS6Dm3db8oF635ufcn7JAkkHZHoJgOi0A6EANlvbONzI7pkQ5RY4
3wBpWauJisCxG0lnwhAhYQETJbCFWZjGaDMeKlUkr1lnSYQjt0tHx4ptlt0pwhoehYAV+oM0y5H3
SucxfbeYATv4uxVuO95EFp6sSoKd9RHsspJmDCHbSjSNylkRw3moVz8K/Ek36thM/M1Gz2suAIQD
acR3cmpaySMQLf764dUb2wQUKf6jMHqpNS7wcJ/x4QFsYQLXD9zTq94/pYyxTqItuLhE/WEU9MWs
mkB3gRA1sFo2H7Obi/bxPDYBYBJ/5BL4AhSdDgkN9xMF9k/oerjTl6zAmeh7
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
