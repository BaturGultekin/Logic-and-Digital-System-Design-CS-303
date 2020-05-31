`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:43:42 11/17/2019
// Design Name:   FullAdder15Bit
// Module Name:   C:/Xilinx/Projects/baturgultekin_egenalbant_sectionI_Lab4/Fulladder15BitTest.v
// Project Name:  baturgultekin_egenalbant_sectionI_Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FullAdder15Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Fulladder15BitTest;

	// Inputs
	reg [14:0] A;
	reg [14:0] B;
	reg M;

	// Outputs
	wire Cout;
	wire V;
	wire [14:0] S;

	// Instantiate the Unit Under Test (UUT)
	FullAdder15Bit uut (
		.A(A), 
		.B(B), 
		.M(M), 
		.Cout(Cout), 
		.V(V), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		A = 15'b010000000000000;
		B = 15'b010000000000000;
		M = 0;

	end
      
endmodule

