// $Id: $
// File name:   DES_CONTROL.sv
// Created:     4/23/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: DES Control
module DES_CONTROL(input clk, mode, n_rst, input [64:1] dataIn, output [64:1] dataOut );
   wire [64:1] des1Out;
   wire [64:1] des2Out;
   wire [5:1]  counter;
   reg [2:0]   count = 3'b000;
   reg 	       dataReady = 0;
   always_ff @ (negedge clk) begin
      dataReady = 0;
      if(count[2:0] != 3'b100 && counter[5:1] == 5'b00000) begin
	 count[2:0] = count[2:0]  + 3'b001;
      end else if (count[2:0] == 3'b100 && counter[5:1] == 5'b00000) begin
	 dataReady = 1;
	 count[2:0] = 3'b000;
      end
   end
   
   DES_TOPLVL DES1 (.clk(clk), .mode(mode),  .counter(counter[5:1]), .dataIn(dataIn[64:1]), .dataOut(des1Out[64:1]));
   DES_TOPLVL DES2 (.clk(clk), .mode(~mode), .counter(counter[5:1]), .dataIn(des1Out[64:1]), .dataOut(des2Out[64:1]));
   DES_TOPLVL DES3 (.clk(clk), .mode(mode),  .counter(counter[5:1]), .dataIn(des2Out[64:1]), .dataOut(dataOut[64:1]));
   DES_flex_counter #(5) COUNT  (.clk(clk),.n_rst(n_rst) ,.count_enable(1'b1), .rollover_val(5'b10000), .clear(1'b0), .count_out(counter[5:1]));
endmodule // DES_Control
