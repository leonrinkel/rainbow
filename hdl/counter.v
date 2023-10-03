module counter #(
	parameter N = 8
) (
	input clk,
	input ce,
	input dir,
	output reg [N-1:0] val
);

	initial val = 0;

	always @(posedge clk)
	begin
		if (ce)
		begin
			if (dir) val <= val - 1;
			else val <= val + 1;
		end
	end

endmodule
