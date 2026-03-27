transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_bram_ctrl_v4_1_10
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_33
vlib riviera/proc_sys_reset_v5_0_15

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_bram_ctrl_v4_1_10 riviera/axi_bram_ctrl_v4_1_10
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_33 riviera/axi_gpio_v2_0_33
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15

vlog -work xilinx_vip  -incr -l axi_vip_v1_1_17 -l smartconnect_v1_0 -l processing_system7_vip_v1_0_19 "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l proc_sys_reset_v5_0_15 \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -l axi_vip_v1_1_17 -l smartconnect_v1_0 -l processing_system7_vip_v1_0_19 "+incdir+../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/c783/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_bram_ctrl_v4_1_10 -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_33 -l proc_sys_reset_v5_0_15 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"c:/Users/Andrei/OneDrive/Desktop/SSC/ethernet_communication/ethernet_communication.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0_sim_netlist.vhdl" \

vcom -work axi_bram_ctrl_v4_1_10 -93  -incr \
"../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/14fa/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_0/sim/design_1_axi_bram_ctrl_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_0/sim/design_1_axi_bram_ctrl_1_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_2_0/sim/design_1_axi_bram_ctrl_2_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_3_0/sim/design_1_axi_bram_ctrl_3_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_33 -93  -incr \
"../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/4208/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \
"c:/Users/Andrei/OneDrive/Desktop/SSC/ethernet_communication/ethernet_communication.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/design_1_axi_smc_0_sim_netlist.vhdl" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../ethernet_communication.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

