// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov 26 17:46:52 2025
// Host        : DESKTOP-6F9KSH9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_3 -prefix
//               blk_mem_gen_3_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_3
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
  blk_mem_gen_3_blk_mem_gen_v8_4_8 U0
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
