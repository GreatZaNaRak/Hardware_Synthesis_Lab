`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2020 03:42:26 PM
// Design Name: 
// Module Name: system
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


module system(output [6:0] seg, output [3:0] an, output dp, input clk);
    
    wire [3:0] num0, num1, num2, num3;
    wire targetClk, an0, an1, an2, an3;
    wire [18:0] tclk;
    
    assign num0 = 4; assign num1 = 3; assign num2 = 2; assign num3 = 1;
    assign an = {an3, an2, an1, an0};
    assign tclk[0] = clk;
    
    genvar c;
    generate 
        for (c=0 ; c < 18 ; c=c+1) begin
            clockDivider fdiv(tclk[c+1], tclk[c]);
        end
    endgenerate
    
    clockDivider fdivTarget(targetClk, tclk[18]);
    quadSevenSeg q7seg(seg, dp, an0, an1, an2, an3, num0, num1, num2, num3, targetClk);
    
endmodule
