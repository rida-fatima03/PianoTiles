`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2022 11:11:15 AM
// Design Name: 
// Module Name: vga_top
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


module pianoo(
input sw0,
    input sw1,
    input sw2,
    input sw3,
    input sw4,
    input sw5,
input clk,
output h_sync,v_sync,
output [3:0] red,green,blue
    );
    wire clk_d, v_trig, video_on;
    wire [9:0] h_count;
    wire[9:0] v_count;
    wire[9:0] x_loc;
    wire[9:0] y_loc;
    wire btn0,btn1,btn2,btn3,btn4,btn5;
    input_btns in(sw0,sw1,sw2,sw3,sw4,sw5,btn0,btn1,btn2,btn3,btn4,btn5);
    clock_div cd(clk,clk_d);
    h_counter hc(clk_d,h_count,v_trig);
    v_counter vc(clk_d,v_trig,v_count);
    vga_sync vgas(h_count,v_count,x_loc,y_loc,h_sync,v_sync,video_on);
    pixel_gen pg(btn0,btn1,btn2,btn3,btn4,btn5,clk_d,x_loc,y_loc,video_on,red,green,blue);
endmodule
