`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 01:32:55 PM
// Design Name: 
// Module Name: AluWithExtraOperations
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


module AluWithExtraOperations();
    reg [15:0] A;
    reg [15:0] B;
    reg [2:0] ALUOp;          //2 bit 
    wire Zero;
    wire CarryOut;
    wire [15:0] Result;
    wire [31:0] MulResult;
initial
$monitor("A=%d, B=%d,ALUOp=%b, Zero=%b, CarryOut=%b, Result=%d, MulResult=%d", A, B, ALUOp, Zero, CarryOut, Result, MulResult);
initial
begin

//AND
#0 A=16'd5; B=16'd5;ALUOp=3'b000;
#10 A=16'd6; B=16'd3;ALUOp=3'b000;

//OR
#10 A=16'd5; B=16'd5;ALUOp=3'b001;
#10 A=16'd6; B=16'd3;ALUOp=3'b001;
//ADD
#10 A=16'd10; B=16'd20;ALUOp=3'b010;
#10 A=16'd10; B=16'd40;ALUOp=3'b010;
//SUB
#10 A=16'd10; B=16'd10;ALUOp=3'b110;
#10 A=16'd40; B=16'd30;ALUOp=3'b110;
//XOR
#10 A=16'd5; B=16'd5;ALUOp=3'b011;
#10 A=16'd6; B=16'd3;ALUOp=3'b011;
//SLLI
#10 A=16'd5; B=16'd5;ALUOp=3'b100;
#10 A=16'd6; B=16'd3;ALUOp=3'b100;
//ROR
#10 A=16'd5; B=16'd5;ALUOp=3'b101;
#10 A=16'd6; B=16'd3;ALUOp=3'b101;
//
#10
$stop;
end
ALU_with_extra_OP ALUExtraTest(A,B,ALUOp,Zero,CarryOut, Result,MulResult);
endmodule
