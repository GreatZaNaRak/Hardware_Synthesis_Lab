`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2020 10:12:34 PM
// Design Name: 
// Module Name: tester
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


module tester;

    reg a, b;
    wire r, r2;
    
    Or o(r, a, b);
    And o2(r2, a, b);
    
    initial
    begin
        #0; a=0; b=0;
        #10; a=1; b=1;
        #10; a = 0; b = 1;
        #10; a = 1; b = 0;
        #10; a = 0; b = 0;
        #20;
        $finish;
    end

endmodule
