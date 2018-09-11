// $Id: $
// File name:   DES_TOPLVL.sv
// Created:     4/23/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: top level
module DES_TOPLVL(input clk, mode, input [5:1] counter, input [64:1] dataIn, output [64:1] dataOut);
   reg [32:1] Rn;
   reg [32:1] Ln;
   wire [64:1] initialPerm;
   wire [48:1] ePerm;
   wire [48:1] key;
   wire [48:1] Bn;
   wire [32:1] Sn;
   wire [32:1] fxn;
   wire [32:1] RPlusOne;
   reg 	       n_rst = 1;
   reg 	       dataReady;
   
   always_ff @ (negedge clk) begin
	 if(counter[5:1] == 5'b00001) begin
	    Rn[32:1] = initialPerm[32:1];
	    Ln[32:1] = initialPerm[64:33];
	    dataReady = 0;
	 end else begin
	    Ln[32:1] = Rn[32:1];
	    Rn[32:1] = RPlusOne[32:1];
	 end
   end

   DES_initialP INITALPERM (.message(dataIn[64:1] ), .IP_OUT(initialPerm[64:1]));
   DES_ePerm    EPERM      (.block(Rn[32:1]), .Ex_per_out(ePerm[48:1]));
   DES_keyLogic KEYLOGIC   (.clk(clk),.mode(mode) ,.number(counter[4:1]), .key(key[48:1]));
   assign Bn[48:1] = ePerm[48:1] ^ key[48:1];
   DES_SBOX     SBOX       (.block(Bn[48:1]), .out(Sn[32:1]));
   DES_permP    PPERM      (.block(Sn[32:1]), .perm_p_out(fxn[32:1]));
   assign RPlusOne = Ln[32:1] ^ fxn[32:1];
   DES_invInitialP INVINITIALPERM (.message({Rn[32:1], Ln[32:1]}), .IP_INV_OUT(dataOut[64:1]));
   
endmodule // DES_TOPLVL
