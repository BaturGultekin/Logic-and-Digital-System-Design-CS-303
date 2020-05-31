`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:52:20 12/16/2019 
// Design Name: 
// Module Name:    baturgultekin_egenalbant_sectionI_TermProjSimulation 
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
module baturgultekin_egenalbant_sectionI_TermProjSimulation(clk, rst, BTN3, BTN2, BTN1, SW, LED, digit4, digit3, digit2, digit1); 
	
	input clk;
	input rst;
	input BTN3, BTN2, BTN1;
	input [3:0] SW;
	output reg [7:0] LED;
	output reg [6:0] digit4, digit3, digit2, digit1;
	
	reg [3:0] password;
   reg [15:0] balance; 
	reg [3:0] current_state;
	reg [3:0] next_state;	
	reg [15:0] counter;
	parameter IDLE=0, PASS_ENT_3=1, PASS_ENT_2=2, PASS_ENT_1=3,LOCK=4, ATM_MENU=5, MONEY=6, WARNING=7, PASS_CHG_3=8, PASS_CHG_2=9, PASS_CHG_1=10, PASS_NEW=11;

	// sequential part - state transitions
	
	always @ (posedge clk or posedge rst)
	begin
		if(rst)
		begin
			current_state<=IDLE;
		end
		else
			current_state<= next_state;
	end

	// combinational part - next state definitions
	always @ (*)
	begin
	case(current_state)
            IDLE:
            begin
					if(BTN3) next_state = PASS_ENT_3;
					else next_state = IDLE;
            end
            PASS_ENT_3:
            begin
               if(BTN1) next_state = IDLE;
					else if (!(SW == password) && BTN3) next_state =PASS_ENT_2;
               else if (SW == password && BTN3) next_state = ATM_MENU;
					else next_state =PASS_ENT_3;
            end
            PASS_ENT_2:
            begin
               if(BTN1) next_state = IDLE;
					else if (!(SW == password) && BTN3) next_state =PASS_ENT_1;
               else if (SW == password && BTN3) next_state = ATM_MENU;					
					else next_state = PASS_ENT_2;
            end
				PASS_ENT_1:
				begin
					if(BTN1) next_state = IDLE;
					else if (!(SW == password) && BTN3) next_state =LOCK;
               else if (SW == password && BTN3) next_state = ATM_MENU;
					else next_state = PASS_ENT_1;
				end
				LOCK:
				begin
					if (counter == 99) 
					begin
						next_state = IDLE;
					end
					else next_state = LOCK;
				end
				ATM_MENU:
				begin
					if(BTN1) next_state = IDLE;
               else if (BTN2) next_state = PASS_CHG_3;
					else if (BTN3) next_state = MONEY;
					else next_state = ATM_MENU;
				end
				MONEY:
				begin
					if(BTN1) next_state = ATM_MENU;
					else if (BTN2)
					begin
						if (SW > balance) next_state = WARNING;
						else
						begin
							next_state = MONEY;
						end
					end
					else if (BTN3)
					begin
						next_state = MONEY;
					end
					else next_state = MONEY;
				end
				WARNING:
				begin
					if (counter == 49) 
					begin
						next_state = MONEY;
					end
					else next_state = WARNING;
				end
				PASS_CHG_3:
				begin
					if(BTN1) next_state = ATM_MENU;
					else if (!(SW == password) && BTN3) next_state = PASS_CHG_2;
               else if (SW == password && BTN3) next_state = PASS_NEW;
					else next_state = PASS_CHG_3;
				end
				PASS_CHG_2:
				begin
					if(BTN1) next_state = ATM_MENU;
					else if (!(SW == password) && BTN3) next_state = PASS_CHG_1;
               else if (SW == password && BTN3) next_state = PASS_NEW;
					else next_state = PASS_CHG_2;
				end
				PASS_CHG_1:
				begin
					if(BTN1) next_state = ATM_MENU;
					else if (!(SW == password) && BTN3) next_state = LOCK;
               else if (SW == password && BTN3) next_state = PASS_NEW;
					else next_state = PASS_CHG_1;
				end
				PASS_NEW:
				begin
					if (BTN3)
					begin
						next_state = ATM_MENU;
					end
					else 
						next_state = PASS_NEW;
				end
				default:
					next_state = IDLE;
        endcase
	end
	
	// sequential part - control registers
	always @ (posedge clk or posedge rst)
	begin
	if(rst)
		begin
			counter<=0;
			password<=0;
			balance<=0;
		end
	else
		case(current_state)
			IDLE:
			begin
				//SSD:CArd
				LED <= 8'b00000001;
				digit4 <= 7'b0110001;
				digit3 <= 7'b0001000; 
				digit2 <= 7'b1111010;
				digit1 <= 7'b1000010;
				counter <= 0;
			end
			PASS_ENT_3:
			begin
				//SSD:PE-3
				LED <= 8'b10000000;
				digit4 <= 7'b0011000;
				digit3 <= 7'b0110000;
				digit2 <= 7'b1111110; 
				digit1 <= 7'b0000110;
			end
			PASS_ENT_2:
			begin
				//SSD:PE-2
				LED <= 8'b11000000;
				digit4 <= 7'b0011000;
				digit3 <= 7'b0110000;
				digit2 <= 7'b1111110; 
				digit1 <= 7'b0010010;
			end
			PASS_ENT_1:
			begin
				//SSD:PE-1
				LED <= 8'b11100000;
				digit4 <= 7'b0011000;
				digit3 <= 7'b0110000; 
				digit2 <= 7'b1111110;
				digit1 <= 7'b1001111;
			end
			LOCK:
			begin
				//SSD:FAIL
				LED <= 8'b11111111;
				digit4 <= 7'b0111000;
				digit3 <= 7'b0001000; 
				digit2 <= 7'b1001111;
				digit1 <= 7'b1110001;
				counter <= counter + 1;
			end
			ATM_MENU:
			begin
				//SSD:OPEn
				LED <= 8'b00010000;
				digit4 <= 7'b0000001;
				digit3 <= 7'b0011000;
				digit2 <= 7'b0110000; 
				digit1 <= 7'b1101010;
			end
			MONEY:
			begin
				LED <= 8'b00001000;
				//Balance
				//for digit 1
				if(balance[3:0]==4'b0000)//0
					digit1<=7'b0000001;
				if(balance[3:0]==4'b0001)//1
					digit1<=7'b1001111;
				if(balance[3:0]==4'b0010)//2
					digit1<=7'b0010010;
				if(balance[3:0]==4'b0011)//3
					digit1<=7'b0000110;
				if(balance[3:0]==4'b0100)//4
					digit1<=7'b1001100;
				if(balance[3:0]==4'b0101)//5
					digit1<=7'b0100100;
				if(balance[3:0]==4'b0110)//6
					digit1<=7'b0100000;
				if(balance[3:0]==4'b0111)//7
					digit1<=7'b0001111;
				if(balance[3:0]==4'b1000)//8
					digit1<=7'b0000000;
				if(balance[3:0]==4'b1001)//9
					digit1<=7'b0000100;
				if(balance[3:0]==4'b1010)//A
					digit1<=7'b0001000;
				if(balance[3:0]==4'b1011)//B
					digit1<=7'b1100000;
				if(balance[3:0]==4'b1100)//C
					digit1<=7'b0110001;
				if(balance[3:0]==4'b1101)//D
					digit1<=7'b1000010;
				if(balance[3:0]==4'b1110)//E
					digit1<=7'b0110000;
				if(balance[3:0]==4'b1111)//F
					digit1<=7'b0111000;
				//for digit 2
				if(balance[7:4]==4'b0000)//0
					digit2<=7'b0000001;
				if(balance[7:4]==4'b0001)//1
					digit2<=7'b1001111;
				if(balance[7:4]==4'b0010)//2
					digit2<=7'b0010010;
				if(balance[7:4]==4'b0011)//3
					digit2<=7'b0000110;
				if(balance[7:4]==4'b0100)//4
					digit2<=7'b1001100;
				if(balance[7:4]==4'b0101)//5
					digit2<=7'b0100100;
				if(balance[7:4]==4'b0110)//6
					digit2<=7'b0100000;
				if(balance[7:4]==4'b0111)//7
					digit2<=7'b0001111;
				if(balance[7:4]==4'b1000)//8
					digit2<=7'b0000000;
				if(balance[7:4]==4'b1001)//9
					digit2<=7'b0000100;
				if(balance[7:4]==4'b1010)//A
					digit2<=7'b0001000;
				if(balance[7:4]==4'b1011)//B
					digit2<=7'b1100000;
				if(balance[7:4]==4'b1100)//C
					digit2<=7'b0110001;
				if(balance[7:4]==4'b1101)//D
					digit2<=7'b1000010;
				if(balance[7:4]==4'b1110)//E
					digit2<=7'b0110000;
				if(balance[7:4]==4'b1111)//F
					digit2<=7'b0111000;
				//for digit 3
				if(balance[11:8]==4'b0000)//0
					digit3<=7'b0000001;
				if(balance[11:8]==4'b0001)//1
					digit3<=7'b1001111;
				if(balance[11:8]==4'b0010)//2
					digit3<=7'b0010010;
				if(balance[11:8]==4'b0011)//3
					digit3<=7'b0000110;
				if(balance[11:8]==4'b0100)//4
					digit3<=7'b1001100;
				if(balance[11:8]==4'b0101)//5
					digit3<=7'b0100100;
				if(balance[11:8]==4'b0110)//6
					digit3<=7'b0100000;
				if(balance[11:8]==4'b0111)//7
					digit3<=7'b0001111;
				if(balance[11:8]==4'b1000)//8
					digit3<=7'b0000000;
				if(balance[11:8]==4'b1001)//9
					digit3<=7'b0000100;
				if(balance[11:8]==4'b1010)//A
					digit3<=7'b0001000;
				if(balance[11:8]==4'b1011)//B
					digit3<=7'b1100000;
				if(balance[11:8]==4'b1100)//C
					digit3<=7'b0110001;
				if(balance[11:8]==4'b1101)//D
					digit3<=7'b1000010;
				if(balance[11:8]==4'b1110)//E
					digit3<=7'b0110000;
				if(balance[11:8]==4'b1111)//F
					digit3<=7'b0111000;
				//for digit 4
				if(balance[15:12]==4'b0000)//0
					digit4<=7'b0000001;
				if(balance[15:12]==4'b0001)//1
					digit4<=7'b1001111;
				if(balance[15:12]==4'b0010)//2
					digit4<=7'b0010010;
				if(balance[15:12]==4'b0011)//3
					digit4<=7'b0000110;
				if(balance[15:12]==4'b0100)//4
					digit4<=7'b1001100;
				if(balance[15:12]==4'b0101)//5
					digit4<=7'b0100100;
				if(balance[15:12]==4'b0110)//6
					digit4<=7'b0100000;
				if(balance[15:12]==4'b0111)//7
					digit4<=7'b0001111;
				if(balance[15:12]==4'b1000)//8
					digit4<=7'b0000000;
				if(balance[15:12]==4'b1001)//9
					digit4<=7'b0000100;
				if(balance[15:12]==4'b1010)//A
					digit4<=7'b0001000;
				if(balance[15:12]==4'b1011)//B
					digit4<=7'b1100000;
				if(balance[15:12]==4'b1100)//C
					digit4<=7'b0110001;
				if(balance[15:12]==4'b1101)//D
					digit4<=7'b1000010;
				if(balance[15:12]==4'b1110)//E
					digit4<=7'b0110000;
				if(balance[15:12]==4'b1111)//F
					digit4<=7'b0111000;
				counter <= 0;
				//SSD:Balance
				if (BTN2 && SW <= balance) balance <= balance - SW;
				else if (BTN3) balance <= balance + SW;
				else balance <= balance;
			end
			WARNING:
			begin
				//SSD:-nA-
				LED <= 8'b11111111;
				digit4 <= 7'b1111110;
				digit3 <= 7'b1101010; 
				digit2 <= 7'b0001000;
				digit1 <= 7'b1111110;
				counter <= counter + 1;
			end
			PASS_CHG_3:
			begin
				//SSD:PC-3
				LED <= 8'b00000100;
				digit4 <= 7'b0011000;
				digit3 <= 7'b0110001;
				digit2 <= 7'b1111110; 
				digit1 <= 7'b0000110;
			end
			PASS_CHG_2:
			begin
				//SSD:PC-2
				LED <= 8'b00000110;
				digit4 <= 7'b0011000;
				digit3 <= 7'b0110001;
				digit2 <= 7'b1111110; 
				digit1 <= 7'b0010010;
			end
			PASS_CHG_1:
			begin
				//SSD:PC-1
				LED <= 8'b00000111;
				digit4 <= 7'b0011000;
				digit3 <= 7'b0110001;
				digit2 <= 7'b1111110; 
				digit1 <= 7'b1001111;
			end
			PASS_NEW:
			begin
				//SSD:PASS
				if (BTN3) password <= SW;
				LED <= 8'b00000010;
				digit4 <= 7'b0011000;
				digit3 <= 7'b0001000;
				digit2 <= 7'b0100100; 
				digit1 <= 7'b0100100;
			end
		endcase
	end 	
endmodule 
