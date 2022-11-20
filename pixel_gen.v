`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2022 04:09:55 PM
// Design Name: 
// Module Name: pixel_gen
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


module pixel_gen(
input btn0,
input btn1,
input btn2,
input btn3,
input btn4,
input btn5,
input clk_d,
input [9:0] pixel_x,
input [9:0] pixel_y,
input video_on,
output reg [3:0] red = 0,
output reg [3:0] green = 0,
output reg [3:0] blue = 0
);
always @(posedge clk_d) begin

 red <= video_on ? ((pixel_x<=210 & pixel_x>=10 & pixel_y >=10 & pixel_y <=235) ||
(pixel_x<=420 & pixel_x>=220 & pixel_y >=10 & pixel_y <=225)|| (pixel_x<=630 & pixel_x>=430 &
pixel_y >=10 & pixel_y <=235) || (pixel_x<=210 & pixel_x>=10 & pixel_y >=245 & pixel_y <=470) ||
 (pixel_x<=420 & pixel_x>=220 & pixel_y >=245 & pixel_y <=470) || (pixel_x<=430 &
pixel_x>=630 & pixel_y >=245 & pixel_y <=470)? 4'h0:4'hF):(4'h0);

 green <= video_on ? ((pixel_x<=210 & pixel_x>=10 & pixel_y >=10 & pixel_y <=235) ||
(pixel_x<=420 & pixel_x>=220 & pixel_y >=10 & pixel_y <=225)|| (pixel_x<=630 & pixel_x>=430 &
pixel_y >=10 & pixel_y <=235) || (pixel_x<=210 & pixel_x>=10 & pixel_y >=245 & pixel_y <=470) ||
 (pixel_x<=420 & pixel_x>=220 & pixel_y >=245 & pixel_y <=470) || (pixel_x<=430 &
pixel_x>=630 & pixel_y >=245 & pixel_y <=470)? 4'h0:4'hF):(4'h0);

 blue <= video_on ? ((pixel_x<=210 & pixel_x>=10 & pixel_y >=10 & pixel_y <=235) ||
(pixel_x<=420 & pixel_x>=220 & pixel_y >=10 & pixel_y <=225)|| (pixel_x<=630 & pixel_x>=430 &
pixel_y >=10 & pixel_y <=235) || (pixel_x<=210 & pixel_x>=10 & pixel_y >=245 & pixel_y <=470) ||
 (pixel_x<=420 & pixel_x>=220 & pixel_y >=245 & pixel_y <=470) || (pixel_x<=430 &
pixel_x>=630 & pixel_y >=245 & pixel_y <=470)? 4'h0:4'hF):(4'h0);
// end
 end 
 
endmodule
