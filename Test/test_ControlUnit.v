`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 06:35:21 PM
// Design Name: 
// Module Name: test_ControlUnit
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


module test_ControlUnit();
reg [2:0] OPCODE;
    wire RegDst;
    wire Branch;
    wire RegWrite;
    wire MemToReg;
    wire MemRead;
    wire MemWrite;
    wire ALUSrc;
    wire MulRegWrite;
    wire [1:0] ALUOp;
    
 initial
$monitor("OPCODE=%b, RegDst=%b,Branch=%b,RegWrite=%b, MemToReg=%b, MemRead=%b, MemWrite=%b, ALUSrc=%b, MulRegWrite=%b, ALUOp=%b", OPCODE, RegDst, Branch, RegWrite, MemRead, MemToReg, MemWrite, ALUSrc, MulRegWrite, ALUOp);
initial
begin
#0 OPCODE=3'b111; 
#10 OPCODE=3'b010; 
#10 OPCODE=3'b100;
#10 OPCODE=3'b101;
#10 OPCODE=3'b000;
#10 OPCODE=3'b001;
#10 OPCODE=3'b011;


#10
$stop;
end
ControlUnit CUTest(OPCODE, RegDst, Branch, RegWrite, MemRead, MemToReg, MemWrite, ALUSrc, MulRegWrite, ALUOp);
endmodule
