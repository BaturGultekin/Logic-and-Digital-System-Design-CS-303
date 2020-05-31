`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:55 11/17/2019 
// Design Name: 
// Module Name:    HybridCLAdder3Module 
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
module HybridCLAdder3Module(
    input [2:0] A,
    input [2:0] B,
    input C0,
    output [2:0] S,
    output Cout,
	 output check
    );

	 wire [2:0] P;
	 wire [2:0] G;
	 wire [3:0] C;
	 
    assign P[0] = (A[0]^B[0]),
           P[1] = (A[1]^B[1]),
           P[2] = (A[2]^B[2]);
    assign G[0] = (A[0]&B[0]),
           G[1] = (A[1]&B[1]),
           G[2] = (A[2]&B[2]);
    assign C[0] = C0,
           C[1] = G[0]|(P[0]&C0),
           C[2] = G[1]|(P[1]&G[0])|(P[1]&P[0]&C0),
           C[3] = G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&C0);
    assign S[0] = P[0]^C[0],
           S[1] = P[1]^C[1],
           S[2] = P[2]^C[2];
    assign Cout = C[3];
	 assign check = C[2];

endmodule 