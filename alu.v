`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Prathik V T Gowda
// 
// Create Date: 08/23/2026 08:05:32 PM
// Design Name: 8 Bit ALU
// Module Name: alu

// Revision 0.01 - File Created
// 
//////////////////////////////////////////////////////////////////////////////////


module alu(
    input [7:0] A,
    input [7:0] B,
    input [2:0] op,
    output reg [7:0] X,
    output reg [15:0] Y,
    output reg Cout
    );
    always@(A,B,op)
    begin
    case(op)
    3'b000 : {Cout,X}=A+B;
    3'b001 : X=A-B;
    3'b010 : Y=A*B;
    3'b011 : X=A&B;
    3'b100 : X=A|B;
    3'b101 : X=A^B;
    endcase
    end
endmodule
