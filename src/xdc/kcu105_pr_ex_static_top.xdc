create_clock -period 3.333 -name clk_in_48Mhz [get_ports clk_in_300Mhz_P]

set_property PACKAGE_PIN AK17 [get_ports clk_in_300Mhz_P]
set_property PACKAGE_PIN AK16 [get_ports clk_in_300Mhz_N]

# User Generated IO constraints 

set_property IOSTANDARD lvds [get_ports clk_in_300Mhz_P]

# User Generated physical constraints 

set_property HD.RECONFIGURABLE true [get_cells U_PR_module_A]
create_pblock pblock_U_PR_module_A
add_cells_to_pblock [get_pblocks pblock_U_PR_module_A] [get_cells -quiet [list U_PR_module_A]]
resize_pblock pblock_U_PR_module_A -add CLOCKREGION_X0Y2:CLOCKREGION_X1Y4 -locs keep_all -replace

set_property SNAPPING_MODE ON [get_pblocks pblock_U_PR_module_A]

