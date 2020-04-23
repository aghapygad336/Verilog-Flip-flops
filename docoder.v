module decoder#(parameter n = 4)(
	input[n-1:0] ilines,
	output[2**n-1:0] Tsig
	);
	
	reg[2**n-1 : 0] r_sig;

	always@(*)
		case (ilines)
			4'h0: r_sig = 16'b0000000000000001;
			4'h1: r_sig = 16'b0000000000000010;
			4'h2: r_sig = 16'b0000000000000100;
			4'h3: r_sig = 16'b0000000000001000;
			4'h4: r_sig = 16'b0000000000010000;
			4'h5: r_sig = 16'b0000000000100000;
			4'h6: r_sig = 16'b0000000001000000;
			4'h7: r_sig = 16'b0000000010000000;
			4'h8: r_sig = 16'b0000000100000000;
			4'h9: r_sig = 16'b0000001000000000;
			4'ha: r_sig = 16'b0000010000000000;
			4'hb: r_sig = 16'b0000100000000000;
			4'hc: r_sig = 16'b0001000000000000;
			4'hd: r_sig = 16'b0010000000000000;
			4'he: r_sig = 16'b0100000000000000;
			4'hf: r_sig = 16'b1000000000000000;
		endcase

	assign Tsig = r_sig;

endmodule
