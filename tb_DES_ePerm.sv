// $Id: $
// File name:   tb_DES_ePerm.sv
// Created:     4/22/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: e perm testbench
`timescale 1ns/10ps

module tb_DES_ePerm();
   localparam CLK_PERIOD = 1;

   reg tb_clk;
   // Clock generation block
   always begin
	tb_clk = 1'b1;
	#(CLK_PERIOD/2.0);
	tb_clk = 1'b0;
	#(CLK_PERIOD/2.0);
   end

   reg [32:1] tb_input = 32'hf0aaf0aa;
   reg [48:1] tb_output; //Expected a15557a1555

   
   DES_ePerm DES (.block(tb_input[32:1]), .Ex_per_out(tb_output[48:1]));

endmodule // tb_DES_initialP
