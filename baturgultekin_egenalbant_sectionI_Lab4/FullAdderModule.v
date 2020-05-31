`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:38:21 11/17/2019 
// Design Name: 
// Module Name:    FullAdderModule 
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
module FullAdderModule(
    input A,
    input B,
    input Cin,
    output Cout,
    output S
    );
	 
	 xor(out1, A, B);
	 and(out2, A, B);
	 xor(S, Cin, out1);
	 and(out3, Cin, out1);
	 or(Cout, out2, out3);

endmodule
