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


module test_16bitAdder();
    reg [15:0] A;
    reg [15:0] B;
    wire [15:0] Result;
    wire CarryOut;
    

initial
$monitor("A=%d, B=%d, CarryOut=%b, Result=%d", A, B, Result, CarryOut);
initial
begin

//AND
#0 A=16'd5; B=16'd5;
#10 A=16'd6; B=16'd3;

//OR
#10 A=16'd205; B=16'd192;
#10 A=16'd756; B=16'd862;

#10
$stop;
end
Adder_16bit Adder_16bitTest(A, B, Result,CarryOut);
endmodule

