#---------------------------------------
# Create Clock Constraints - U_PR_module_A 
#---------------------------------------
create_clock -period 3.333 -name clk_in_48Mhz.clk [get_ports {clk}] -waveform {0.000 1.666}
#WARNING: Clock Source for pin "U_PR_module_A/clk" (clk_300Mhz_BUFG_inst) is not locked. Add a location constraint to the XDC prior to running this command.
set_system_jitter 0.0
set_clock_latency -source -max 2.774 [get_clocks {clk_in_48Mhz.clk}]
set_clock_latency -source -min 1.29 [get_clocks {clk_in_48Mhz.clk}]
set_clock_uncertainty 0.035 [get_clocks {clk_in_48Mhz.clk}]
