`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2021 07:09:44 PM
// Design Name: 
// Module Name: testAlu16bit
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


module testAlu16bit();
    reg [15:0] A;
    reg [15:0] B;
    reg [1:0] ALUOp;          //2 bit 
    reg BNegate;
    wire Zero;
    wire CarryOut;
    wire [15:0] Result;
    

initial
$monitor("A=%d, B=%d,ALUOp=%b, BNgate=%b, Zero=%b, CarryOut=%b, Result=%d", A, B, ALUOp, BNegate, Zero, CarryOut, Result);
initial
begin

//AND
#0 A=16'd5; B=16'd5;ALUOp=2'b00;BNegate=1'b0;
#10 A=16'd6; B=16'd3;ALUOp=2'b00;BNegate=1'b0;

//OR
#10 A=16'd5; B=16'd5;ALUOp=2'b01;BNegate=1'b0;
#10 A=16'd6; B=16'd3;ALUOp=2'b01;BNegate=1'b0;
//ADD
#0 A=16'd10; B=16'd20;ALUOp=2'b10;BNegate=1'b0;
#10 A=16'd10; B=16'd40;ALUOp=2'b10;BNegate=1'b0;
//SUB
#10 A=16'd10; B=16'd10;ALUOp=2'b10;BNegate=1'b1;
#10 A=16'd40; B=16'd30;ALUOp=2'b10;BNegate=1'b1;
//XOR
#10 A=16'd5; B=16'd5;ALUOp=2'b11;BNegate=1'b0;
#10 A=16'd6; B=16'd3;ALUOp=2'b11;BNegate=1'b0;
#10
$stop;
end
ALU_16bit ALU16bitTest(A,B,ALUOp,BNegate,Zero,CarryOut, Result);
endmodule
