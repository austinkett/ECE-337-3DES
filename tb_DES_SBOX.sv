// $Id: $
// File name:   tb_DES_SBOX.sv
// Created:     4/23/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: sbox des
module tb_DES_SBOX();
   localparam CLK_PERIOD = 1;

   reg tb_clk;
   // Clock generation block
   always begin
	tb_clk = 1'b1;
	#(CLK_PERIOD/2.0);
	tb_clk = 1'b0;
	#(CLK_PERIOD/2.0);
   end

   reg [48:1] tb_input;
   reg [32:1] tb_output; //Expected a15557a1555

   DES_SBOX SBOX (.block(tb_input[48:1]), .out(tb_output));
   initial begin
     tb_input = 48'b011000010001011110111010100001100110010100100111;
   end
endmodule // tb_DES_SBOX


   
