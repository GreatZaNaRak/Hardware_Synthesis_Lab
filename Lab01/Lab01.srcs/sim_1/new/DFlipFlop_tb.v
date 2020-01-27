`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2020 05:41:11 PM
// Design Name: 
// Module Name: DFlipFlop_tb
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


module DFlipFlop_tb;
    
    reg clock, d, nreset;
    
    DFlipFlop r(q, clock, nreset, d);
    
    always #10 clock = ~clock;
    always #8 d = ~d;
    initial
    begin
        #0 d=0;clock=0;nreset=0;
        #50 nreset=1;
        #1000;
        $finish;
    end
    
    
    
endmodule
