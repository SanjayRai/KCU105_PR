# Created : 16:59:35, Fri May 20, 2016 : Sanjay Rai

source ../../../device_type.tcl


set TOP_module xilinx_axi_pcie3_ep

create_project -in_memory -part [DEVICE_TYPE] 

read_ip {
../../../IP/clk_wiz_mmcm_50M/clk_wiz_mmcm_50M.xci
../../../IP/ila_16Wx8192D/ila_16Wx8192D.xci
}

read_verilog {
../src/PR_module_A_BB.v
../src/kcu105_pr_ex_static_top.v
}

read_xdc {
../../xdc/kcu105_pr_ex_static_top.xdc
}

if (1) {
synth_design -top kcu105_pr_ex_static_top -part [DEVICE_TYPE]
write_checkpoint -force kcu105_pr_ex_static_top_static_synth.dcp
write_debug_probes ./kcu105_pr_ex_static_top_statc.ltx
}
