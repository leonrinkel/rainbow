module divider_tb
(
);

	reg clk;
	reg rst;
	wire clk_div;

	divider #(
		.DIVISOR(2)
	) dut (
		.clk(clk),
		.rst(rst),
		.clk_div(clk_div)
	);

	initial
	begin
		$dumpfile("divider_tb.vcd");
		$dumpvars;

		/* In reset */
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10

		/* Not in reset */
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10
		clk = 1'b0;
		rst = 1'b0;
		#10
		clk = 1'b1;
		rst = 1'b0;
		#10

		/* In reset */
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10
		clk = 1'b0;
		rst = 1'b1;
		#10
		clk = 1'b1;
		rst = 1'b1;
		#10

		$finish;
	end

endmodule
