`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2020 01:35:52 AM
// Design Name: 
// Module Name: Lab01
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


module fullAdder(output cout, s, input cin, a, b);
    
    reg cout, s; 
 
    always @(a or b or cin)  begin 
        {cout, s} = a+b+cin;
    end
    
endmodule

/////////////////////////////////////////////////////////////////////

module fullAdder2(output cout, s, input cin, a, b);
    
    wire cout, s;
    assign {cout, s} = a+b+cin;
   
endmodule

/////////////////////////////////////////////////////////////////////

module DFlipFlop(output q, input clock, nreset, d);

    reg q;
    always @(posedge clock) begin
        q = nreset ? d : 0;
    end

endmodule

/////////////////////////////////////////////////////////////////////

module 
endmodule
