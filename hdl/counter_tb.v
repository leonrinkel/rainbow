module counter_tb
(
);

	reg clk;
	reg ce;
	reg dir;
	wire [7:0] val;

	counter #(
		.N(8)
	) dut (
		.clk(clk),
		.ce(ce),
		.dir(dir),
		.val(val)
	);

	initial
	begin
		$dumpfile("counter_tb.vcd");
		$dumpvars;

		/* Idle */

		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10

		/* Increment */

		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b1;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b1;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b1;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b1;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10

		/* Idle */

		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10

		/* Decrement */

		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b1;
		#10
		clk = 1'b1;
		ce = 1'b1;
		dir = 1'b1;
		#10
		clk = 1'b0;
		ce = 1'b1;
		dir = 1'b1;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b1;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b1;
		#10
		clk = 1'b1;
		ce = 1'b1;
		dir = 1'b1;
		#10
		clk = 1'b0;
		ce = 1'b1;
		dir = 1'b1;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b1;
		#10

		/* Idle */

		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b0;
		ce = 1'b0;
		dir = 1'b0;
		#10
		clk = 1'b1;
		ce = 1'b0;
		dir = 1'b0;
		#10

		$finish;
	end

endmodule
