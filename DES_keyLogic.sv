// $Id: $
// File name:   DES_keyLogic.sv
// Created:     4/22/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Key Logic
module DES_keyLogic(input clk, mode, input [3:0] number, output reg [48:1] key);
   wire [48:1] key1  = 48'h1b02effc7072;
   wire [48:1] key2  = 48'h79aed9dbc9e5;
   wire [48:1] key3  = 48'h55fc8a42cf99;
   wire [48:1] key4  = 48'h72add6db351d;
   wire [48:1] key5  = 48'h7cec07eb53a8;
   wire [48:1] key6  = 48'h63a53e507b2f;
   wire [48:1] key7  = 48'hec84b7f618bc;
   wire [48:1] key8  = 48'hf78a3ac13bfb;
   wire [48:1] key9  = 48'he0dbebede781;
   wire [48:1] key10 = 48'hb1f347ba464f;
   wire [48:1] key11 = 48'h215fd3ded386;
   wire [48:1] key12 = 48'h7571f59467e9;
   wire [48:1] key13 = 48'h97c5d1faba41;
   wire [48:1] key14 = 48'h5f43b7f2e73a;
   wire [48:1] key15 = 48'hbf918d3d3f0a;
   wire [48:1] key16 = 48'hcb3d8b0e17f5;
   always_ff @ (negedge clk) begin
      if(mode == 1) begin
      key[48:1] = number[3:0] == 4'b0001 ? key1 : number[3:0] == 4'b0010 ? key2 : number[3:0] == 4'b0011 ? key3 : number[3:0] == 4'b0100 ? key4 : number[3:0] == 4'b0101 ? key5 : number[3:0] == 4'b0110 ? key6 : number[3:0] == 4'b0111 ? key7 : number[3:0] == 4'b1000 ? key8 : number[3:0] == 4'b1001 ? key9 : number[3:0] == 4'b1010 ? key10 : number[3:0] == 4'b1011 ? key11 : number[3:0] == 4'b1100 ? key12 : number[3:0] == 4'b1101 ? key13 : number[3:0] == 4'b1110 ? key14 : number[3:0] == 4'b1111 ? key15 : key16;
      end else begin
	 key[48:1] = number[3:0] == 4'b0001 ? key16 : number[3:0] == 4'b0010 ? key15 : number[3:0] == 4'b0011 ? key14 : number[3:0] == 4'b0100 ? key13 : number[3:0] == 4'b0101 ? key12 : number[3:0] == 4'b0110 ? key11 : number[3:0] == 4'b0111 ? key10 : number[3:0] == 4'b1000 ? key9 : number[3:0] == 4'b1001 ? key8 : number[3:0] == 4'b1010 ? key7 : number[3:0] == 4'b1011 ? key6 : number[3:0] == 4'b1100 ? key5 : number[3:0] == 4'b1101 ? key4 : number[3:0] == 4'b1110 ? key3 : number[3:0] == 4'b1111 ? key2 : key1;
      end
      
   end
   
endmodule // DES_keyLogic

   
