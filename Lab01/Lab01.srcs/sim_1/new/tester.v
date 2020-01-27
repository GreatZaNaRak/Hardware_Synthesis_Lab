`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2020 01:40:32 AM
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
    
    reg a, b, cin;
    wire cout, s, cout2, s2;
    
    fullAdder a1(cout, s, cin, a, b);
    fullAdder2 a2(cout2, s2, cin, a, b);
    
    initial
    begin
        #0; a=0;b=0;cin=0;
        #5; a=1;b=0;
        #5; a=0;b=1;
        #5; a=1;b=1;
        #10;
        $finish;
    end

endmodule
