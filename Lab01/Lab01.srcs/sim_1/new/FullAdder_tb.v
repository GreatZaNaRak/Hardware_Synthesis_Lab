`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2020 05:35:32 PM
// Design Name: 
// Module Name: FullAdder_tb
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


module FullAdder_tb;

    reg cin, a, b;
    wire cout1, s1, cout2, s2;
    
    FullAdder r1(cout1, s1, cin, a, b);
    FullAdder2 r2(cout2, s2, cin, a, b);
    
    initial
    begin
        #0; a=0;b=0;cin=0;
        #10; a=1;b=0;cin=0;
        #10; a=0;b=1;cin=0;
        #10; a=1;b=1;cin=0;
        #10; a=0;b=0;cin=0;
        #10; a=1;b=0;cin=1;
        #10; a=0;b=1;cin=1;
        #10; a=1;b=1;cin=1;
        #10; a=0;b=0;cin=1;
        #20;
        $finish;
    end

endmodule
