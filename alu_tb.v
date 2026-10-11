`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/23/2026 08:12:52 PM
// Design Name: 
// Module Name: alu_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module alu_tb;
reg [7:0] A;
reg [7:0] B;
reg [2:0] op;
wire[7:0] X;
wire [15:0] Y;
wire Cout;
alu uut(A,B,op,X,Y,Cout);
initial
begin
A=8'b10000000;
B=8'b01000000;
#10;
op=3'b000;
#10;
op=3'b001;
#10;
op=3'b010;
#10;
op=3'b011;
#10;
op=3'b100;
#10;
op=3'b101;
#10;
$finish;
end
endmodule
