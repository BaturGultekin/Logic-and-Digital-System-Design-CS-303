// Verilog test fixture created from schematic C:\Xilinx\Projects\BaturGultekin_24188_EgeNalbant_24859\CarryLookAHeadHybridlAdderSubtractor15Bit.sch - Wed Nov 06 06:18:52 2019

`timescale 1ns / 1ps

module CarryLookAHeadHybridlAdderSubtractor15Bit_CarryLookAHeadHybridlAdderSubtractor15Bit_sch_tb();

// Inputs
   reg B0;
   reg B1;
   reg B2;
   reg B3;
   reg B6;
   reg B7;
   reg B4;
   reg B8;
   reg B5;
   reg A0;
   reg A1;
   reg A2;
   reg A3;
   reg A4;
   reg A5;
   reg A6;
   reg A7;
   reg A8;
   reg C0;
   reg B9;
   reg B10;
   reg B11;
   reg B12;
   reg B13;
   reg B14;
   reg A14;
   reg A13;
   reg A12;
   reg A9;
   reg A10;
   reg A11;

// Output
   wire S0;
   wire S1;
   wire S2;
   wire S3;
   wire S4;
   wire S5;
   wire S6;
   wire S7;
   wire S8;
   wire S9;
   wire S10;
   wire S11;
   wire V;
   wire S13;
   wire S14;
   wire S12;

// Bidirs

// Instantiate the UUT
   CarryLookAHeadHybridlAdderSubtractor15Bit UUT (
		.B0(B0), 
		.B1(B1), 
		.B2(B2), 
		.B3(B3), 
		.B6(B6), 
		.B7(B7), 
		.B4(B4), 
		.B8(B8), 
		.B5(B5), 
		.A0(A0), 
		.A1(A1), 
		.A2(A2), 
		.A3(A3), 
		.A4(A4), 
		.A5(A5), 
		.A6(A6), 
		.A7(A7), 
		.A8(A8), 
		.C0(C0), 
		.S0(S0), 
		.S1(S1), 
		.S2(S2), 
		.S3(S3), 
		.S4(S4), 
		.S5(S5), 
		.S6(S6), 
		.S7(S7), 
		.S8(S8), 
		.B9(B9), 
		.B10(B10), 
		.B11(B11), 
		.B12(B12), 
		.B13(B13), 
		.B14(B14), 
		.A14(A14), 
		.A13(A13), 
		.A12(A12), 
		.A9(A9), 
		.A10(A10), 
		.A11(A11), 
		.S9(S9), 
		.S10(S10), 
		.S11(S11), 
		.V(V), 
		.S13(S13), 
		.S14(S14), 
		.S12(S12)
   );
// Initialize Inputs
	initial begin
		C0 = 1;
		A0 = 0;
		A1 = 0;
		A2 = 0;
		A3 = 0;
		A4 = 0;
		A5 = 0;
		A6 = 0;
		A7 = 0;
		A8 = 0;
		A9 = 0;
		A10 = 0;
		A11 = 0;
		A12 = 0;
		A13 = 0;
		A14 = 1;
		B0 = 0;
		B1 = 0;
		B2 = 1;
		B3 = 0;
		B4 = 0;
		B5 = 0;
		B6 = 0;
		B7 = 0;
		B8 = 0;
		B9 = 0;
		B10 = 0;
		B11 = 0;
		B12 = 0;
		B13 = 1;
		B14 = 0;
	end
endmodule
