module pixel #(
	parameter DATA_TICKS = 25,
	parameter PAUSE_TICKS = 1600,
	parameter T0H = 6,
	parameter T1H = 12,
	parameter BITS = 24,
	parameter LEDS = 8
) (
	input clk,
	input rst,
	input [7:0] r,
	input [7:0] g,
	input [7:0] b,
	output reg out
);

	localparam STATE_PAUSE = 1'b0;
	localparam STATE_TXFER = 1'b1;
	reg state;

	reg [10:0] tick_index;
	wire last_tick;
	assign last_tick =
		(state == STATE_PAUSE) ?
			(tick_index == PAUSE_TICKS - 1) :
			(tick_index == DATA_TICKS - 1);

	reg [4:0] bit_index;
	wire last_bit;
	assign last_bit = (bit_index == BITS - 1);

	reg [4:0] led_index;
	wire last_led;
	assign last_led = (led_index == LEDS - 1);

	wire [BITS-1:0] data;
	assign data = { g, r, b };
	wire bit_value;
	assign bit_value = data[BITS - 1 - bit_index];

	always @(posedge clk)
	begin
		case (state)

			STATE_PAUSE:
			begin
				/* Count ticks */
				if (rst == 1'b1) tick_index <= 0;
				else if (last_tick) tick_index <= 0;
				else tick_index <= tick_index + 1;

				/* Drive output */
				if (rst == 1'b1) out <= 1'b0;
				else if (last_tick) out <= 1'b1;
				else out <= 1'b0;

				/* Determine state */
				state <= (last_tick) ? STATE_TXFER : STATE_PAUSE;
			end

			STATE_TXFER:
			begin
				/* Count ticks */
				if (rst == 1'b1) tick_index <= 0;
				else if (last_tick) tick_index <= 0;
				else tick_index <= tick_index + 1;

				/* Count bits */
				if (rst == 1'b1) bit_index <= 0;
				else if (last_tick)
				begin
					if (last_bit) bit_index <= 0;
					else bit_index <= bit_index + 1;
				end

				/* Count leds */
				if (rst == 1'b1) led_index <= 0;
				else if (last_tick && last_bit)
				begin
					if (last_led) led_index <= 0;
					else led_index <= led_index + 1;
				end

				/* Drive output */
				if (rst == 1'b1) out <= 1'b0;
				else if (bit_value == 1'b1)
				begin
					if (tick_index < T1H - 1) out <= 1'b1;
					else if (last_tick) out <= 1'b1;
					else out <= 1'b0;
				end
				else
				begin
					if (tick_index < T0H - 1) out <= 1'b1;
					else if (last_tick) out <= 1'b1;
					else out <= 1'b0;
				end

				/* Determine state */
				state <=
					(last_tick && last_bit && last_led)
						? STATE_PAUSE : STATE_TXFER;
			end

		endcase
	end

endmodule
