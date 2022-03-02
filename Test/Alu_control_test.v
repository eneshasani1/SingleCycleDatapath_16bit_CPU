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


module test_AluControl();
    reg [1:0] ALUOp;
    reg [3:0] Funct;
    wire [2:0]Operacioni;
    
 initial
$monitor("ALUOp=%b, Funct=%b, Operacioni=%b", ALUOp, Funct, Operacioni);
initial
begin
#0 ALUOp=2'b00; Funct = 4'bXXXX;
#10 ALUOp=2'b01; Funct = 4'bXXXX;
#10 ALUOp=2'b10; Funct = 4'b1111;
#10 ALUOp=2'b10; Funct = 4'b1110;
#10 ALUOp=2'b10; Funct = 4'b1101;
#10 ALUOp=2'b10; Funct = 4'b0000;
#10 ALUOp=2'b10; Funct = 4'b0001;
#10 ALUOp=2'b10; Funct = 4'b1100;
#10 ALUOp=2'b10; Funct = 4'b0010;
#10 ALUOp=2'b11; Funct = 4'bXXXX;

#10
$stop;
end
ALUControl ALUControlTest(ALUOp, Funct, Operacioni);
endmodule
