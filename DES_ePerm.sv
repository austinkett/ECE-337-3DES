// $Id: $
// File name:   DES_ePerm.sv
// Created:     4/22/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: ePerm code
module DES_ePerm(input [32:1] block, output [48:1] Ex_per_out);
   	 assign Ex_per_out[48] = block[1];
	 assign Ex_per_out[47] = block[32];
	 assign Ex_per_out[46] = block[31];
	 assign Ex_per_out[45] = block[30];
	 assign Ex_per_out[44] = block[29];
	 assign Ex_per_out[43] = block[28]; 
	 assign Ex_per_out[42] = block[29];
	 assign Ex_per_out[41] = block[28];
	 assign Ex_per_out[40] = block[27];
	 assign Ex_per_out[39] = block[26];
	 assign Ex_per_out[38] = block[25];
	 assign Ex_per_out[37] = block[24];
	 assign Ex_per_out[36] = block[25];
	 assign Ex_per_out[35] = block[24];
	 assign Ex_per_out[34] = block[23];
	 assign Ex_per_out[33] = block[22];
	 assign Ex_per_out[32] = block[21];
	 assign Ex_per_out[31] = block[20];
	 assign Ex_per_out[30] = block[21];
	 assign Ex_per_out[29] = block[20];
	 assign Ex_per_out[28] = block[19];
	 assign Ex_per_out[27] = block[18];
	 assign Ex_per_out[26] = block[17];
	 assign Ex_per_out[25] = block[16];
	 assign Ex_per_out[24] = block[17];
	 assign Ex_per_out[23] = block[16];
	 assign Ex_per_out[22] = block[15];
	 assign Ex_per_out[21] = block[14];
	 assign Ex_per_out[20] = block[13];
	 assign Ex_per_out[19] = block[12];
	 assign Ex_per_out[18] = block[13];
	 assign Ex_per_out[17] = block[12];
	 assign Ex_per_out[16] = block[11];
	 assign Ex_per_out[15] = block[10];
	 assign Ex_per_out[14] = block[9];
	 assign Ex_per_out[13] = block[8];
	 assign Ex_per_out[12] = block[9];
	 assign Ex_per_out[11] = block[8];
	 assign Ex_per_out[10] = block[7];
	 assign Ex_per_out[9] = block[6];
	 assign Ex_per_out[8] = block[5];
	 assign Ex_per_out[7] = block[4];
	 assign Ex_per_out[6] = block[5];
	 assign Ex_per_out[5] = block[4];
	 assign Ex_per_out[4] = block[3];
	 assign Ex_per_out[3] = block[2];
	 assign Ex_per_out[2] = block[1];
	 assign Ex_per_out[1] = block[32];
endmodule // ePerm
