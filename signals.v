`include "decoder.v"
`include "sc.v"

module signals(
	input reset, clk, en,
	output [15:0] dec_signal
	);

	wire[3:0] temp;


	sc counter(.en(en), .clk(clk), .reset(reset),
			   .r_reg(temp[3:0]));

	decoder dec_out(.ilines(temp[3:0]),
					.Tsig(dec_signal[15:0]));

endmodule
