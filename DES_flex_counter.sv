// $Id: $
// File name:   flex_counter.sv
// Created:     1/29/2018
// Author:      Ryan Flores
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Flex Counter

module DES_flex_counter
#(
	parameter NUM_CNT_BITS = 4
)
(
	input wire clk,
	input wire n_rst,
	input wire clear,
	input wire count_enable,
	input reg [NUM_CNT_BITS - 1:0] rollover_val,
	output reg [NUM_CNT_BITS - 1:0] count_out,
	output reg rollover_flag
);
	reg nxt_rf;
	reg [NUM_CNT_BITS - 1:0] nxt_count;

	always_ff @(posedge clk, negedge n_rst) begin
		if (n_rst == 0) begin
			count_out <= 0;
			rollover_flag <= 0;
		end else begin
			count_out <= nxt_count;
			rollover_flag <= nxt_rf;
		end
	end

	always_comb begin
		nxt_count = count_out;
		nxt_rf = rollover_flag;
		if (clear == 1'b1) begin
			nxt_count = '0;
			nxt_rf = 1'b0;
		end else if (count_enable == 1'b1) begin
			if (rollover_flag == 1'b1) begin
				nxt_count = {{NUM_CNT_BITS}{'b0}};
				nxt_rf = 1'b0;
			end else begin
				nxt_count = nxt_count + 1;
				if (nxt_count == rollover_val) begin
					nxt_rf = 1'b1;
				end else begin
					nxt_rf = 1'b0;
				end
			end
		end
	end
endmodule
