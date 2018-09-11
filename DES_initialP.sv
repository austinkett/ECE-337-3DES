// $Id: $
// File name:   DES_initialP.sv
// Created:     4/22/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: Initial Permutation
module DES_initialP(input [64:1] message, output [64:1] IP_OUT);
	 assign IP_OUT[64] = message[65 - 58];
	 assign IP_OUT[63] = message[65 - 50];
	 assign IP_OUT[62] = message[65 - 42];
	 assign IP_OUT[61] = message[65 - 34];
	 assign IP_OUT[60] = message[65 - 26];
	 assign IP_OUT[59] = message[65 - 18];
	 assign IP_OUT[58] = message[65 - 10];
	 assign IP_OUT[57] = message[65 - 2];
	 assign IP_OUT[56] = message[65 - 60];
	 assign IP_OUT[55] = message[65 - 52];
	 assign IP_OUT[54] = message[65 - 44];
	 assign IP_OUT[53] = message[65 - 36];
	 assign IP_OUT[52] = message[65 - 28];
	 assign IP_OUT[51] = message[65 - 20];
	 assign IP_OUT[50] = message[65 - 12];
	 assign IP_OUT[49] = message[65 - 4];
	 assign IP_OUT[48] = message[65 - 62];
	 assign IP_OUT[47] = message[65 - 54];
	 assign IP_OUT[46] = message[65 - 46];
	 assign IP_OUT[45] = message[65 - 38];
	 assign IP_OUT[44] = message[65 - 30];
 	 assign IP_OUT[43] = message[65 - 22];
	 assign IP_OUT[42] = message[65 - 14];
	 assign IP_OUT[41] = message[65 - 6];
	 assign IP_OUT[40] = message[65 - 64];
	 assign IP_OUT[39] = message[65 - 56];
	 assign IP_OUT[38] = message[65 - 48];
	 assign IP_OUT[37] = message[65 - 40];
	 assign IP_OUT[36] = message[65 - 32];
	 assign IP_OUT[35] = message[65 - 24];
	 assign IP_OUT[34] = message[65 - 16];
	 assign IP_OUT[33] = message[65 - 8];
	 assign IP_OUT[32] = message[65 - 57];
	 assign IP_OUT[31] = message[65 - 49];
	 assign IP_OUT[30] = message[65 - 41];
	 assign IP_OUT[29] = message[65 - 33];
	 assign IP_OUT[28] = message[65 - 25];
	 assign IP_OUT[27] = message[65 - 17];
	 assign IP_OUT[26] = message[65 - 9];
	 assign IP_OUT[25] = message[65 - 1];
	 assign IP_OUT[24] = message[65 - 59];
	 assign IP_OUT[23] = message[65 - 51];
	 assign IP_OUT[22] = message[65 - 43];
	 assign IP_OUT[21] = message[65 - 35];
	 assign IP_OUT[20] = message[65 - 27];
	 assign IP_OUT[19] = message[65 - 19];
	 assign IP_OUT[18] = message[65 - 11];
	 assign IP_OUT[17] = message[65 - 3];
	 assign IP_OUT[16] = message[65 - 61];
	 assign IP_OUT[15] = message[65 - 53];
	 assign IP_OUT[14] = message[65 - 45];
	 assign IP_OUT[13] = message[65 - 37];
	 assign IP_OUT[12] = message[65 - 29];
	 assign IP_OUT[11] = message[65 - 21];
	 assign IP_OUT[10] = message[65 - 13];
	 assign IP_OUT[9] = message[65 - 5];
	 assign IP_OUT[8] = message[65 - 63];
	 assign IP_OUT[7] = message[65 - 55];
	 assign IP_OUT[6] = message[65 - 47];
	 assign IP_OUT[5] = message[65 - 39];
	 assign IP_OUT[4] = message[65 - 31];
	 assign IP_OUT[3] = message[65 - 23];
	 assign IP_OUT[2] = message[65 - 15];
	 assign IP_OUT[1] = message[65 - 7];
endmodule // DES_initialP
