`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2020 03:31:25 PM
// Design Name: 
// Module Name: clockDivider
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


module clockDivider(output clkDivide, input clk);

    reg clkDivide;
    
    initial begin clkDivide = 0; end
    
    always @(posedge clk) begin
        clkDivide = ~clkDivide;
    end
    
endmodule
