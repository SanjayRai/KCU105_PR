
####################################################################################
# Generated by Vivado 2016.1 built on 'Fri Apr  8 15:45:23 MDT 2016' by 'xbuild'
# Command Used: write_xdc -force -cell U_PR_module_A ../src/U_PR_module_A_phys.xdc
####################################################################################


####################################################################################
# Constraints from file : 'bitware_static_top.xdc'
####################################################################################

set_property HD.RECONFIGURABLE true [current_design]
create_pblock pblock_U_PR_module_A
add_cells_to_pblock [get_pblocks pblock_U_PR_module_A] -top
resize_pblock [get_pblocks pblock_U_PR_module_A] -add {CLOCKREGION_X0Y2:CLOCKREGION_X1Y4}
set_property SNAPPING_MODE ON [get_pblocks pblock_U_PR_module_A]

# User Generated miscellaneous constraints 

set_property HD.PARTPIN_LOCS {RCLK_CLEL_R_L_X0Y269 RCLK_CLEL_R_L_X16Y269 XIPHY_L_X0Y240 RCLK_CLEL_R_L_X0Y209 RCLK_CLEL_R_L_X16Y209 XIPHY_L_X0Y180 RCLK_CLEL_R_L_X0Y149 RCLK_CLEL_R_L_X16Y149 XIPHY_L_X0Y120} [get_ports clk]
set_property HD.PARTPIN_LOCS {INT_X26Y140} [get_ports {data_out[0]}]
set_property HD.PARTPIN_LOCS {INT_X27Y145} [get_ports {data_out[10]}]
set_property HD.PARTPIN_LOCS {INT_X28Y145} [get_ports {data_out[11]}]
set_property HD.PARTPIN_LOCS {INT_X27Y143} [get_ports {data_out[12]}]
set_property HD.PARTPIN_LOCS {INT_X28Y143} [get_ports {data_out[13]}]
set_property HD.PARTPIN_LOCS {INT_X27Y145} [get_ports {data_out[14]}]
set_property HD.PARTPIN_LOCS {INT_X27Y146} [get_ports {data_out[15]}]
set_property HD.PARTPIN_LOCS {INT_X26Y141} [get_ports {data_out[1]}]
set_property HD.PARTPIN_LOCS {INT_X26Y140} [get_ports {data_out[2]}]
set_property HD.PARTPIN_LOCS {INT_X26Y142} [get_ports {data_out[3]}]
set_property HD.PARTPIN_LOCS {INT_X26Y140} [get_ports {data_out[4]}]
set_property HD.PARTPIN_LOCS {INT_X26Y142} [get_ports {data_out[5]}]
set_property HD.PARTPIN_LOCS {INT_X26Y143} [get_ports {data_out[6]}]
set_property HD.PARTPIN_LOCS {INT_X28Y142} [get_ports {data_out[7]}]
set_property HD.PARTPIN_LOCS {INT_X28Y143} [get_ports {data_out[8]}]
set_property HD.PARTPIN_LOCS {INT_X27Y146} [get_ports {data_out[9]}]
