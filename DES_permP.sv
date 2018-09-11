// $Id: $
// File name:   DES_permP.sv
// Created:     4/23/2018
// Author:      Austin Ketterer
// Lab Section: 337-01
// Version:     1.0  Initial Design Entry
// Description: perm p
module DES_permP(input [32:1] block, output [32:1] perm_p_out);
   assign perm_p_out[32] = block[33 - 16];
   assign perm_p_out[31] = block[33 - 7];
   assign perm_p_out[30] = block[33 - 20];
   assign perm_p_out[29] = block[33 - 21];
   assign perm_p_out[28] = block[33 - 29];
   assign perm_p_out[27] = block[33 - 12];
   assign perm_p_out[26] = block[33 - 28];
   assign perm_p_out[25] = block[33 - 17];
   assign perm_p_out[24] = block[33 - 1];
   assign perm_p_out[23] = block[33 - 15];
   assign perm_p_out[22] = block[33 - 23];
   assign perm_p_out[21] = block[33 - 26];
   assign perm_p_out[20] = block[33 - 5];
   assign perm_p_out[19] = block[33 - 18];
   assign perm_p_out[18] = block[33 - 31];
   assign perm_p_out[17] = block[33 - 10];
   assign perm_p_out[16] = block[33 - 2];
   assign perm_p_out[15] = block[33 - 8];
   assign perm_p_out[14] = block[33 - 24];
   assign perm_p_out[13] = block[33 - 14];
   assign perm_p_out[12] = block[33 - 32];
   assign perm_p_out[11] = block[33 - 27];
   assign perm_p_out[10] = block[33 - 3];
   assign perm_p_out[9] = block[33 - 9];
   assign perm_p_out[8] = block[33 - 19];
   assign perm_p_out[7] = block[33 - 13];
   assign perm_p_out[6] = block[33 - 30];
   assign perm_p_out[5] = block[33 - 6];
   assign perm_p_out[4] = block[33 - 22];
   assign perm_p_out[3] = block[33 - 11];
   assign perm_p_out[2] = block[33 - 4];
   assign perm_p_out[1] = block[33 - 25];
endmodule // DES_permP

