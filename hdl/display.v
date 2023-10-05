module display #(
	parameter BASE = 10
) (
	input clk,
	input [7:0] num,
	output [3:0] bcd,
	output reg cat
);

	initial cat = 1'b0;

	always @(posedge clk)
	begin
		cat <= ~cat;
	end

	wire [7:0] digit = (cat) ?
		(num / BASE) :
		(num % BASE);
	assign bcd = digit[3:0];

endmodule
