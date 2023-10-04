module pixel_tb
(
);

	reg clk;
	reg rst;
	reg [7:0] r;
	reg [7:0] g;
	reg [7:0] b;
	wire out;

	pixel #(
		.DATA_TICKS(6),
		.PAUSE_TICKS(12),
		.T0H(2),
		.T1H(4)
	) dut (
		.clk(clk),
		.rst(rst),
		.r(r),
		.g(g),
		.b(b),
		.out(out)
	);

	initial
	begin
		$dumpfile("pixel_tb.vcd");
		$dumpvars;

		r = 8'b01010101;
		g = 8'b01010101;
		b = 8'b01010101;

		/* In reset */

		clk = 1'b1;
		rst = 1'b1;
		#25
		clk = 1'b0;
		rst = 1'b1;
		#25
		clk = 1'b1;
		rst = 1'b1;
		#25
		clk = 1'b0;
		rst = 1'b1;
		#25
		clk = 1'b1;
		rst = 1'b1;
		#25
		clk = 1'b0;
		rst = 1'b1;
		#25
		clk = 1'b1;
		rst = 1'b1;
		#25
		clk = 1'b0;
		rst = 1'b1;
		#25
		clk = 1'b1;
		rst = 1'b1;
		#25
		clk = 1'b0;
		rst = 1'b1;
		#25
		clk = 1'b1;
		rst = 1'b1;
		#25
		clk = 1'b0;
		rst = 1'b1;
		#25

		/* Not in reset */

		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25
		clk = 1'b1;
		rst = 1'b0;
		#25
		clk = 1'b0;
		rst = 1'b0;
		#25

		$finish;
	end

endmodule
