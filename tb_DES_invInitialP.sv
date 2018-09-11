// $Id: $
// File name:   tb_DES_invInitialP.sv
// Created:     4/23/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: tb for inv initial P
module tb_DES_invInitialP();
   localparam CLK_PERIOD = 1;

   reg tb_clk;
   // Clock generation block
   always begin
	tb_clk = 1'b1;
	#(CLK_PERIOD/2.0);
	tb_clk = 1'b0;
	#(CLK_PERIOD/2.0);
   end

   reg [63:0] tb_input = 64'ha4cd99543423234;
   reg [63:0] tb_output; //Expected cc00ccfff0aaf0aa

   
   DES_invInitialP DES (.message(tb_input[63:0]), .IP_INV_OUT(tb_output[63:0]));
endmodule // tb_DES_initialP
