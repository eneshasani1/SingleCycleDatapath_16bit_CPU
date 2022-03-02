`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 11:29:36 PM
// Design Name: 
// Module Name: ror_test
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


module ror_test();
    reg[15:0] A;
    reg[15:0] B;
    wire[15:0] ROR;
initial
$monitor("A=%b, B=%b, ROR=%b", A, B, ROR);
initial
begin
#0 A=16'd7; B=16'd5;
#10 A=16'd11; B=16'd3;
#10 A=16'd69; B=16'd3;
#10 A=16'd421; B=16'd3;
#10 $stop;
end
ROR ROR_Test(A,B,ROR);
endmodule
