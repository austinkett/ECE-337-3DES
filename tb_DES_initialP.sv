// $Id: $
// File name:   tb_DES_initialP.sv
// Created:     4/22/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: TB for Initial P
`timescale 1ns/10ps

module tb_DES_initialP();
   localparam CLK_PERIOD = 1;

   reg tb_clk;
   // Clock generation block
   always begin
	tb_clk = 1'b1;
	#(CLK_PERIOD/2.0);
	tb_clk = 1'b0;
	#(CLK_PERIOD/2.0);
   end

   reg [63:0] tb_input = 64'h0123456789abcdef;
   reg [63:0] tb_output; //Expected cc00ccfff0aaf0aa

   
   DES_initialP DES (.message(tb_input[63:0]), .IP_OUT(tb_output[63:0]));

endmodule // tb_DES_initialP

