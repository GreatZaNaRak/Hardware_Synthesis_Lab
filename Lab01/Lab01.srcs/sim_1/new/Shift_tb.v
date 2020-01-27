`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2020 05:53:35 PM
// Design Name: 
// Module Name: Shift_tb
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


module Shift_tb;

    reg clock, d;
    wire [1:0] r1, r2;
    
    ShiftA a(r1, clock, d);
    ShiftB b(r2, clock, d);
    
    always #10 clock = ~clock;
    always #50 d = ~d;
    
    initial
    begin
        #0; clock=0;d=0;
        #500;
        $finish;
    end

endmodule
