
module button (
	button_external_connection_export,
	clk_clk,
	led_external_connection_export);	

	input	[1:0]	button_external_connection_export;
	input		clk_clk;
	output	[7:0]	led_external_connection_export;
endmodule
