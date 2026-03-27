// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Nov 26 17:46:52 2025
// Host        : DESKTOP-6F9KSH9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_8 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 48528)
`pragma protect data_block
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
DEQ37++ZxB+qRmDoXCurZpCWUqNw
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
