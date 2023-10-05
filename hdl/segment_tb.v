module segment_tb
(
);

	reg [3:0] bcd;
	wire a, b, c, d, e, f, g;

	segment dut (
		.bcd(bcd),
		.a(a),
		.b(b),
		.c(c),
		.d(d),
		.e(e),
		.f(f),
		.g(g)
	);

	initial
	begin
		$dumpfile("segment_tb.vcd");
		$dumpvars;

		bcd = 4'h0;
		#10
		bcd = 4'h1;
		#10
		bcd = 4'h2;
		#10
		bcd = 4'h3;
		#10
		bcd = 4'h4;
		#10
		bcd = 4'h5;
		#10
		bcd = 4'h6;
		#10
		bcd = 4'h7;
		#10
		bcd = 4'h8;
		#10
		bcd = 4'h9;
		#10

		bcd = 4'hA;
		#10
		bcd = 4'hB;
		#10
		bcd = 4'hC;
		#10
		bcd = 4'hD;
		#10
		bcd = 4'hE;
		#10
		bcd = 4'hF;
		#10

		$finish;
	end

endmodule
