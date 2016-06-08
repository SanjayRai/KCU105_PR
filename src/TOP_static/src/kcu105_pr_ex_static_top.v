module kcu105_pr_ex_static_top (
input clk_in_300Mhz_P,
input clk_in_300Mhz_N
);
wire [15:0] data_out;
wire clk_100Mhz;

clk_wiz_mmcm_50M U_clk_wiz_mmcm_50M
(
.clk_in_300M_in_p(clk_in_300Mhz_P),    // input clk_in_300M_in_p
.clk_in_300M_in_n(clk_in_300Mhz_N),    // input clk_in_300M_in_n
.clk_out_100M(clk_100Mhz));    // output clk_out_100M

PR_module_A U_PR_module_A (
    .clk(clk_100Mhz),
    .data_out(data_out));

ila_16Wx8192D U_ila_16Wx8192D (
	.clk(clk_100Mhz), // input wire clk
	.probe0(data_out)); // input wire [15:0] probe0


endmodule
