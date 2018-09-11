// $Id: $
// File name:   tb_DES_CONTROL.sv
// Created:     4/23/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: des controller
`timescale 1ns / 100ps

module tb_DES_CONTROL();
   localparam CLK_PERIOD = 10;

   reg tb_clk;
   // Clock generation block
   always begin
      tb_clk = 1'b1;
      #(CLK_PERIOD/2.0);
      tb_clk = 1'b0;
      #(CLK_PERIOD/2.0);
   end

   reg 	      tb_en_rst = 0;
   reg 	      tb_dn_rst = 1;
   reg 	      tb_eDataReady = 1;
   reg 	      tb_dDataReady = 0;
   reg [64:1] tb_eDataIn = 64'h0123456789abcdef;
   reg [64:1] tb_dDataIn = 64'h822eee6dc572cb21;
   reg 	      tb_eDataFinished;
   reg 	      tb_dDataFinished;
   reg 	      tb_eFinishedFinal;
   reg 	      tb_dFinishedFinal;
   reg [64:1] tb_expected_value;
   
   
      reg [64:1] tb_dataOut;
   reg [64:1] 	 tb_data_OUT;
   
   DES_CONTROL DUT (.clk(tb_clk),.en_rst(tb_en_rst),.dn_rst(tb_dn_rst),.eDataReady(tb_eDataReady), .dDataReady(tb_dDataReady), .eDataIn(tb_eDataIn[64:1]), .dDataIn(tb_dDataIn[64:1]) ,.dataOut(tb_dataOut[64:1]), .eDataFinished(tb_eDataFinished), .dDataFinished(tb_dDataFinished), .eFinishedFinal(tb_eFinishedFinal), .dFinishedFinal(tb_dFinishedFinal));
   
   initial begin
      @(posedge tb_clk);
      tb_en_rst = 1;
      tb_eDataReady = 0;
      #(CLK_PERIOD * 16)
      tb_eDataReady = 1;
      tb_eDataIn = 64'h7654321076543210; //bcf757d40e382b26	
      #(CLK_PERIOD);
      tb_eDataReady = 0;
      #(CLK_PERIOD * 16)
      tb_eDataReady = 1;
      
      
      tb_eDataIn = 64'h0011223344556677; //b64cb5acdf11937f	
      #(CLK_PERIOD);
      tb_eDataReady = 0;
      #(CLK_PERIOD * 16)
      tb_eDataReady = 1;
      tb_eDataIn = 64'h0123456789abcdef; //bcf757d40e382b26
      
      

      #(CLK_PERIOD);
      tb_expected_value = 64'h822eee6dc572cb21;
      tb_data_OUT = tb_dataOut;
      tb_eDataReady = 0;
      #(CLK_PERIOD * 16)
      tb_eDataReady = 1;
      tb_eDataIn = 64'h7654321076543210; //bcf757d40e382b26

 	
      #(CLK_PERIOD);
      tb_expected_value = 64'h44544255811590f1;
      tb_data_OUT = tb_dataOut;
      tb_eDataReady = 0;
      #(CLK_PERIOD * 16)
      tb_eDataReady = 1;
      tb_eDataIn = 64'h0011223344556677; //b64cb5acdf11937f

	
      #(CLK_PERIOD);
      tb_expected_value =  64'haab0528beb8d7835;
      tb_data_OUT = tb_dataOut;
      tb_eDataReady = 0;
      #(CLK_PERIOD * 16);
  
      #(CLK_PERIOD);
      tb_expected_value = 64'h822eee6dc572cb21;
      tb_data_OUT = tb_dataOut;
      #(CLK_PERIOD * 16);

      #(CLK_PERIOD);
      tb_expected_value = 64'h44544255811590f1;
      tb_data_OUT = tb_dataOut;
      #(CLK_PERIOD * 16);
   
      #(CLK_PERIOD);
      tb_expected_value = 64'haab0528beb8d7835;
      tb_data_OUT = tb_dataOut;
      #(CLK_PERIOD * 20);
      
      //Part 2, decryption
      tb_dn_rst = 0;
      tb_dDataReady = 1;
      @(posedge tb_clk);
      @(posedge tb_clk);
      tb_dn_rst = 1;
      tb_dDataReady = 0;
      #(CLK_PERIOD * 16)
      tb_dDataReady = 1;
      tb_dDataIn = 64'h44544255811590f1; //bcf757d40e382b26	
      #(CLK_PERIOD);
      tb_dDataReady = 0;
      #(CLK_PERIOD * 16)
      tb_dDataReady = 1;
      tb_dDataIn = 64'haab0528beb8d7835; //b64cb5acdf11937f
      #(CLK_PERIOD);
      tb_dDataReady = 0;
      #(CLK_PERIOD * 16);
      #(CLK_PERIOD);
      tb_data_OUT = tb_dataOut;
      tb_expected_value = 64'h0123456789abcdef;
      
      #(CLK_PERIOD * 16);
      #(CLK_PERIOD);
      tb_data_OUT = tb_dataOut;
      tb_expected_value = 64'h7654321076543210;
      #(CLK_PERIOD * 16);
      #(CLK_PERIOD);
      tb_data_OUT = tb_dataOut;
      tb_expected_value = 64'h0011223344556677;
      
			  
      
   end // initial begin
endmodule // tb_DES_TOPLVL
