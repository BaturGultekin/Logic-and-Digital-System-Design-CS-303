`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:58 11/17/2019 
// Design Name: 
// Module Name:    HybridCLAdder15Bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module HybridCLAdder15Bit(
	input [14:0] A,
   input [14:0] B,
   input M,
   output [14:0] S,
   output V,
   output Cout
   );
	 
	wire [3 :0] C;
	wire check;
	wire [14:0] X;
	 
	assign X[0] = (B[0]^M);
	assign X[1] = (B[1]^M);
	assign X[2] = (B[2]^M);
	assign X[3] = (B[3]^M);
	assign X[4] = (B[4]^M);
	assign X[5] = (B[5]^M);
	assign X[6] = (B[6]^M);
	assign X[7] = (B[7]^M);
	assign X[8] = (B[8]^M);
	assign X[9] = (B[9]^M);
	assign X[10] = (B[10]^M);
	assign X[11] = (B[11]^M);
	assign X[12] = (B[12]^M);
	assign X[13] = (B[13]^M);
	assign X[14] = (B[14]^M);
	 
	HybridCLAdder3Module CLA1 (A[2:0], X[2:0], M, S[2:0], C[0]);
	HybridCLAdder3Module CLA2 (A[5:3], X[5:3], C[0], S[5:3], C[1]);
	HybridCLAdder3Module CLA3 (A[8:6], X[8:6], C[1], S[8:6], C[2]);
	HybridCLAdder3Module CLA4 (A[11:9], X[11:9], C[2], S[11:9], C[3]);
	HybridCLAdder3Module CLA5 (A[14:12], X[14:12], C[2], S[14:12], Cout, check);
	 
	xor(V, check, Cout);


endmodule 