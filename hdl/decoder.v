module decoder(
	input clk,
	input a,
	input b,
	output cw,
	output ccw
);

	localparam STATE_INIT  = 3'b000;
	localparam STATE_CW_A  = 3'b001;
	localparam STATE_CW_B  = 3'b010;
	localparam STATE_CW_C  = 3'b011;
	localparam STATE_CCW_A = 3'b101;
	localparam STATE_CCW_B = 3'b110;
	localparam STATE_CCW_C = 3'b111;

	reg [2:0] state;
	initial state = STATE_INIT;

	assign cw =
		(state == STATE_CW_C) &&
		({ a, b } == 2'b11);
	assign ccw =
		(state == STATE_CCW_C) &&
		({ a, b } == 2'b11);

	always @(posedge clk)
	begin
		case (state)

			STATE_INIT:
			begin
				case ({ a, b })
					2'b00: state <= STATE_INIT; /* invalid */
					2'b01: state <= STATE_CW_A;
					2'b10: state <= STATE_CCW_A;
					2'b11: state <= STATE_INIT;
				endcase
			end

			STATE_CW_A:
			begin
				case ({ a, b })
					2'b00: state <= STATE_CW_B;
					2'b01: state <= STATE_CW_A;
					2'b10: state <= STATE_INIT; /* invalid */
					2'b11: state <= STATE_INIT;
				endcase
			end

			STATE_CW_B:
			begin
				case ({ a, b })
					2'b00: state <= STATE_CW_B;
					2'b01: state <= STATE_CW_A;
					2'b10: state <= STATE_CW_C;
					2'b11: state <= STATE_INIT; /* invalid */
				endcase
			end

			STATE_CW_C:
			begin
				case ({ a, b })
					2'b00: state <= STATE_CW_B;
					2'b01: state <= STATE_INIT; /* invalid */
					2'b10: state <= STATE_CW_C;
					2'b11: state <= STATE_INIT;
				endcase
			end

			STATE_CCW_A:
			begin
				case ({ a, b })
					2'b00: state <= STATE_CCW_B;
					2'b01: state <= STATE_INIT; /* invalid */
					2'b10: state <= STATE_CCW_A;
					2'b11: state <= STATE_INIT;
				endcase
			end

			STATE_CCW_B:
			begin
				case ({ a, b })
					2'b00: state <= STATE_CCW_B;
					2'b01: state <= STATE_CCW_C;
					2'b10: state <= STATE_CCW_A;
					2'b11: state <= STATE_INIT; /* invalid */
				endcase
			end

			STATE_CCW_C:
			begin
				case ({ a, b })
					2'b00: state <= STATE_CCW_B;
					2'b01: state <= STATE_CCW_C;
					2'b10: state <= STATE_INIT; /* invalid */
					2'b11: state <= STATE_INIT;
				endcase
			end

			default: /* not reachable */ ;

		endcase
	end

endmodule
