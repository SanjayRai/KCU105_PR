open_hw
connect_hw_server -url mcmicro:3121
current_hw_target [get_hw_targets */xilinx_tcf/Digilent/210251893419]
set_property PARAM.FREQUENCY 15000000 [get_hw_targets */xilinx_tcf/Digilent/210251893419]
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
refresh_hw_device -update_hw_probes false [lindex [get_hw_devices] 0]
set_property PROBES.FILE {./full_design_PR_X.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./config_X.bit} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]

proc prog_config_X {} {
set_property PROBES.FILE {./full_design_PR_X.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./config_X.bit} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
}
proc prog_config_X_PR {} {
set_property PROBES.FILE {./full_design_PR_X.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./config_X_pblock_U_PR_module_A_partial.bit} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
}
proc prog_clear_X_PR {} {
set_property PROBES.FILE {./full_design_PR_X.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./config_X_pblock_U_PR_module_A_partial_clear.bit} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
}

proc prog_config_Y {} {
set_property PROBES.FILE {./full_design_PR_X.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./config_Y.bit} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
}
proc prog_config_Y_PR {} {
set_property PROBES.FILE {./full_design_PR_X.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./config_Y_pblock_U_PR_module_A_partial.bit} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
}
proc prog_clear_Y_PR {} {
set_property PROBES.FILE {./full_design_PR_X.ltx} [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./config_Y_pblock_U_PR_module_A_partial_clear.bit} [lindex [get_hw_devices] 0]
program_hw_devices [lindex [get_hw_devices] 0]
refresh_hw_device [lindex [get_hw_devices] 0]
}
