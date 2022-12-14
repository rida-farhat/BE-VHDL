
module avalon_anemo (
	bp_export,
	clk_clk,
	leds_export,
	in_freq_export);	

	input	[1:0]	bp_export;
	input		clk_clk;
	output	[7:0]	leds_export;
	input		in_freq_export;
endmodule
