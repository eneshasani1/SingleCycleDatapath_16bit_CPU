`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2021 04:02:52 AM
// Design Name: 
// Module Name: slli_mux
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


module slli_mux();
reg[15:0] A;
    reg[15:0] B;
    wire[15:0] SLLI;
initial
$monitor("A=%b, B=%b, ROR=%b", A, B, SLLI);
initial
begin
#0 A=16'd7; B=16'd5;
#10 A=16'd11; B=16'd3;
#10 A=16'd69; B=16'd3;
#10 A=16'd421; B=16'd3;
#10 $stop;
end
SLLI ROR_Test(A,B,SLLI);

endmodule
