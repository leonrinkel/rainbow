module divider #(
	parameter DIVISOR = 50000000
) (
	input clk,
	input rst,
	output reg clk_div
);

	reg [31:0] count;

	always @(posedge clk)
	begin
		if (rst == 1'b1 || count == DIVISOR - 1)
			count <= 32'd0;
		else count <= count + 32'd1;

		if (rst == 1'b1) clk_div <= 1'b0;
		else if (count == DIVISOR - 1)
			clk_div <= ~clk_div;
	end

endmodule
