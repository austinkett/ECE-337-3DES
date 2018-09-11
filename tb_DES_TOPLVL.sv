// $Id: $
// File name:   tb_DES_TOPLVLD.sv
// Created:     4/23/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: top lvl d

`timescale 1ns / 10ps

module tb_DES_TOPLVL();
   localparam CLK_PERIOD = 1;

   reg tb_clk;
   // Clock generation block
   always begin
      tb_clk = 1'b1;
      #(CLK_PERIOD/2.0);
      tb_clk = 1'b0;
      #(CLK_PERIOD/2.0);
   end
   reg [64:1] tb_input = 64'h0123456789ABCDEF;
   
   //reg [64:1] tb_input = 64'h85E813540F0AB405;
   reg [64:1] tb_output; //Expected cc00ccfff0aaf0aa
   reg 	      tb_mode = 1;
   reg [5:1]  tb_counter;
   reg 	      tb_n_rst;
   
   DES_TOPLVL DUT (.clk(tb_clk),.mode(tb_mode), .counter(tb_counter[5:1]),.dataIn(tb_input[64:1]), .dataOut(tb_output[64:1]));

   DES_flex_counter #(5) COUNT  (.clk(tb_clk),.n_rst(tb_n_rst) ,.count_enable(1'b1), .rollover_val(5'b10000), .clear(1'b0), .count_out(tb_counter[5:1]));
   initial begin
      tb_n_rst = 0;
      @(posedge tb_clk);
      tb_n_rst = 1;
   end // initial begin
endmodule // tb_DES_TOPLVL
