`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 02:42:28 PM
// Design Name: 
// Module Name: mux3ne1_test
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


module mux3ne1_test();
  reg[15:0]Hyrja0;
    reg [15:0]Hyrja1;
    reg [15:0]Hyrja2;
    reg [2:0] S;
    wire [15:0] Dalja;
initial
$monitor("Hyrja0=%d, Hyrja1=%d, S=%, Dalja=%d", Hyrja0, Hyrja1, Hyrja2, S, Dalja);
initial
begin
#0 Hyrja0=16'd5; Hyrja1=16'd20; Hyrja2=16'd23;S=3'b100;
#10 Hyrja0=16'd5; Hyrja1=16'd20; Hyrja2=16'd23;S=3'b000;
#10 Hyrja0=16'd5; Hyrja1=16'd20; Hyrja2=16'd23;S=3'b001;
#10 Hyrja0=16'd5; Hyrja1=16'd20; Hyrja2=16'd23;S=3'b010;
#10 Hyrja0=16'd5; Hyrja1=16'd20; Hyrja2=16'd23;S=3'b011;
#10 Hyrja0=16'd5; Hyrja1=16'd20; Hyrja2=16'd23;S=3'b101;
#10 Hyrja0=16'd5; Hyrja1=16'd20; Hyrja2=16'd23;S=3'b110;
#10 Hyrja0=16'd5; Hyrja1=16'd20; Hyrja2=16'd23;S=3'b111;

#10 $stop;
end
mux3ne1 MuxTest(Hyrja0,Hyrja1,Hyrja2,S,Dalja);
endmodule
