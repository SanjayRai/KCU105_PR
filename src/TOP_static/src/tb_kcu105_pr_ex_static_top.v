module tb_kcu105_pr_ex_static_top ();

reg clk_in_300Mhz = 1'b0;

always #20.833 clk_in_300Mhz = !clk_in_300Mhz;

kcu105_pr_ex_static_top U_kcu105_pr_ex_static_top (
    .clk_in_300Mhz_P(clk_in_300Mhz),
    .clk_in_300Mhz_N(~clk_in_300Mhz)
);

endmodule
