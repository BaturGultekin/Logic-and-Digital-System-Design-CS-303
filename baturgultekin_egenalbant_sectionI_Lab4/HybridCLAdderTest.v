`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:59:48 11/17/2019
// Design Name:   HybridCLAdder15Bit
// Module Name:   C:/Xilinx/Projects/baturgultekin_egenalbant_sectionI_Lab4/HybridCLAdderTest.v
// Project Name:  baturgultekin_egenalbant_sectionI_Lab4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: HybridCLAdder15Bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module HybridCLAdderTest;

	// Inputs
	reg [14:0] A;
	reg [14:0] B;
	reg M;

	// Outputs
	wire [14:0] S;
	wire V;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	HybridCLAdder15Bit uut (
		.A(A), 
		.B(B), 
		.M(M), 
		.S(S), 
		.V(V), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs		
		A = 15'b010000000000000;
		B = 15'b001000000000000;
		M = 1;
		end
		
endmodule

