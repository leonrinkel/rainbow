module decoder_tb
(
);

	reg clk;
	reg a;
	reg b;
	wire cw;
	wire ccw;

	decoder dut (
		.clk(clk),
		.a(a),
		.b(b),
		.cw(cw),
		.ccw(ccw)
	);

	initial
	begin
		$dumpfile("decoder_tb.vcd");
		$dumpvars;

		/* Counter clockwise */

		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10
		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10

		clk = 1'b0;
		{ a, b } = 2'b10;
		#10
		clk = 1'b1;
		{ a, b } = 2'b10;
		#10
		clk = 1'b0;
		{ a, b } = 2'b10;
		#10
		clk = 1'b1;
		{ a, b } = 2'b10;
		#10

		clk = 1'b0;
		{ a, b } = 2'b00;
		#10
		clk = 1'b1;
		{ a, b } = 2'b00;
		#10
		clk = 1'b0;
		{ a, b } = 2'b00;
		#10
		clk = 1'b1;
		{ a, b } = 2'b00;
		#10

		clk = 1'b0;
		{ a, b } = 2'b01;
		#10
		clk = 1'b1;
		{ a, b } = 2'b01;
		#10
		clk = 1'b0;
		{ a, b } = 2'b01;
		#10
		clk = 1'b1;
		{ a, b } = 2'b01;
		#10

		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10
		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10

		/* Counter clockwise */

		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10
		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10

		clk = 1'b0;
		{ a, b } = 2'b10;
		#10
		clk = 1'b1;
		{ a, b } = 2'b10;
		#10
		clk = 1'b0;
		{ a, b } = 2'b10;
		#10
		clk = 1'b1;
		{ a, b } = 2'b10;
		#10

		clk = 1'b0;
		{ a, b } = 2'b00;
		#10
		clk = 1'b1;
		{ a, b } = 2'b00;
		#10
		clk = 1'b0;
		{ a, b } = 2'b00;
		#10
		clk = 1'b1;
		{ a, b } = 2'b00;
		#10

		clk = 1'b0;
		{ a, b } = 2'b01;
		#10
		clk = 1'b1;
		{ a, b } = 2'b01;
		#10
		clk = 1'b0;
		{ a, b } = 2'b01;
		#10
		clk = 1'b1;
		{ a, b } = 2'b01;
		#10

		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10
		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10

		/* Clockwise */

		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10
		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10

		clk = 1'b0;
		{ a, b } = 2'b01;
		#10
		clk = 1'b1;
		{ a, b } = 2'b01;
		#10
		clk = 1'b0;
		{ a, b } = 2'b01;
		#10
		clk = 1'b1;
		{ a, b } = 2'b01;
		#10

		clk = 1'b0;
		{ a, b } = 2'b00;
		#10
		clk = 1'b1;
		{ a, b } = 2'b00;
		#10
		clk = 1'b0;
		{ a, b } = 2'b00;
		#10
		clk = 1'b1;
		{ a, b } = 2'b00;
		#10

		clk = 1'b0;
		{ a, b } = 2'b10;
		#10
		clk = 1'b1;
		{ a, b } = 2'b10;
		#10
		clk = 1'b0;
		{ a, b } = 2'b10;
		#10
		clk = 1'b1;
		{ a, b } = 2'b10;
		#10

		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10
		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10

		/* Clockwise */

		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10
		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10

		clk = 1'b0;
		{ a, b } = 2'b01;
		#10
		clk = 1'b1;
		{ a, b } = 2'b01;
		#10
		clk = 1'b0;
		{ a, b } = 2'b01;
		#10
		clk = 1'b1;
		{ a, b } = 2'b01;
		#10

		clk = 1'b0;
		{ a, b } = 2'b00;
		#10
		clk = 1'b1;
		{ a, b } = 2'b00;
		#10
		clk = 1'b0;
		{ a, b } = 2'b00;
		#10
		clk = 1'b1;
		{ a, b } = 2'b00;
		#10

		clk = 1'b0;
		{ a, b } = 2'b10;
		#10
		clk = 1'b1;
		{ a, b } = 2'b10;
		#10
		clk = 1'b0;
		{ a, b } = 2'b10;
		#10
		clk = 1'b1;
		{ a, b } = 2'b10;
		#10

		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10
		clk = 1'b0;
		{ a, b } = 2'b11;
		#10
		clk = 1'b1;
		{ a, b } = 2'b11;
		#10

		$finish;
	end

endmodule
