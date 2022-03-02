`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2021 03:10:37 PM
// Design Name: 
// Module Name: testALU1bit
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


module testALU1bit();

reg A, B, CIN, BInvert;
reg [1:0] Operation;
wire Result, COUT;

initial
$monitor("A=%b, B=%b, CIN=%b, BInvert=%b, Operation=%b, Result=%b, COUT=%b", A, B, CIN, BInvert, Operation, Result, COUT);


initial
begin
//AND
#0 A=1'b0; B=1'b0; CIN=1'b0; BInvert=1'b0; Operation=2'b00;
#10 A=1'b0; B=1'b1; CIN=1'b0;  BInvert=1'b0; Operation=2'b00;
#10 A=1'b1; B=1'b0; CIN=1'b0;  BInvert=1'b0; Operation=2'b00;
#10 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; Operation=2'b00;


//OR
#10 A=1'b0; B=1'b0; CIN=1'b0; BInvert=1'b0; Operation=2'b01;
#10 A=1'b0; B=1'b1; CIN=1'b0;  BInvert=1'b0; Operation=2'b01;
#10 A=1'b1; B=1'b0; CIN=1'b0;  BInvert=1'b0; Operation=2'b01;
#10 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; Operation=2'b01;
//ADD
#10 A=1'b0; B=1'b0; CIN=1'b0; BInvert=1'b0; Operation=2'b10;
#10 A=1'b0; B=1'b1; CIN=1'b0;  BInvert=1'b0; Operation=2'b10;
#10 A=1'b1; B=1'b0; CIN=1'b0;  BInvert=1'b0; Operation=2'b10;
#10 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; Operation=2'b10;
#10 A=1'b1; B=1'b1; CIN=1'b1; BInvert=1'b0; Operation=2'b10;
//SUB
#10 A=1'b0; B=1'b0; CIN=1'b1; BInvert=1'b1; Operation=2'b10;
#10 A=1'b0; B=1'b1; CIN=1'b1;  BInvert=1'b1; Operation=2'b10;
#10 A=1'b1; B=1'b0; CIN=1'b1;  BInvert=1'b1; Operation=2'b10;
#10 A=1'b1; B=1'b1; CIN=1'b1; BInvert=1'b1; Operation=2'b10;
//XOR
#10 A=1'b0; B=1'b0; CIN=1'b0; BInvert=1'b0; Operation=2'b11;
#10 A=1'b0; B=1'b1; CIN=1'b0;  BInvert=1'b0; Operation=2'b11;
#10 A=1'b1; B=1'b0; CIN=1'b0;  BInvert=1'b0; Operation=2'b11;
#10 A=1'b1; B=1'b1; CIN=1'b0; BInvert=1'b0; Operation=2'b11;
#10  
$stop;
end

ALU_1bit ALUTest(A, B, CIN, BInvert, Operation, Result, COUT);

endmodule
