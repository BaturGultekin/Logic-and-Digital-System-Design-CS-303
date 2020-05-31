`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:55 11/17/2019 
// Design Name: 
// Module Name:    FullAdder15Bit 
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
module FullAdder15Bit(
    input [14:0] A,
    input [14:0] B,
    input M,
    output Cout,
    output V,
    output [14:0] S
    );   


wire [14:1] C;


FullAdderModule FA0(A[0], (B[0]^M), M, C[1], S[0]);
FullAdderModule FA1(A[1], (B[1]^M), C[1], C[2], S[1]);
FullAdderModule FA2(A[2], (B[2]^M), C[2], C[3], S[2]);
FullAdderModule FA3(A[3], (B[3]^M), C[3], C[4], S[3]);
FullAdderModule FA4(A[4], (B[4]^M), C[4], C[5], S[4]);
FullAdderModule FA5(A[5], (B[5]^M), C[5], C[6], S[5]);
FullAdderModule FA6(A[6], (B[6]^M), C[6], C[7], S[6]);
FullAdderModule FA7(A[7], (B[7]^M), C[7], C[8], S[7]);
FullAdderModule FA8(A[8], (B[8]^M), C[8], C[9], S[8]);
FullAdderModule FA9(A[9], (B[9]^M), C[9], C[10], S[9]);
FullAdderModule FA10(A[10], (B[10]^M), C[10], C[11], S[10]);
FullAdderModule FA11(A[11], (B[11]^M), C[11], C[12], S[11]);
FullAdderModule FA12(A[12], (B[12]^M), C[12], C[13], S[12]);
FullAdderModule FA13(A[13], (B[13]^M), C[13], C[14], S[13]);
FullAdderModule FA14(A[14], (B[14]^M), C[14], Cout, S[14]);


xor(V, Cout, C[14]);

endmodule
