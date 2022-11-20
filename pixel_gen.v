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

 red <= video_on ? ((pixel_x<=165 & pixel_x>=55 & pixel_y >=90 & pixel_y <=390) ||
(pixel_x<=305 & pixel_x>=195 & pixel_y >=90 & pixel_y <=390)|| (pixel_x<=445 & pixel_x>=335 &
pixel_y >=90 & pixel_y <=390) || 
(pixel_x<=585 & pixel_x>=475 & pixel_y >=90 & pixel_y <=390)? 4'h0:4'hF):(4'h0);

 green <= video_on ? ((pixel_x<=165 & pixel_x>=55 & pixel_y >=90 & pixel_y <=390) ||
(pixel_x<=305 & pixel_x>=195 & pixel_y >=90 & pixel_y <=390)|| (pixel_x<=445 & pixel_x>=335 &
pixel_y >=90 & pixel_y <=390) || 
(pixel_x<=585 & pixel_x>=475 & pixel_y >=90 & pixel_y <=390)? 4'h0:4'hF):(4'h0);

 blue <= video_on ? ((pixel_x<=165 & pixel_x>=55 & pixel_y >=90 & pixel_y <=390) ||
(pixel_x<=305 & pixel_x>=195 & pixel_y >=90 & pixel_y <=390)|| (pixel_x<=445 & pixel_x>=335 &
pixel_y >=90 & pixel_y <=390) || 
(pixel_x<=585 & pixel_x>=475 & pixel_y >=90 & pixel_y <=390)? 4'h0:4'hF):(4'h0);
// end
 end 
 
endmodule
