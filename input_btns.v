`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2022 10:10:23 AM
// Design Name: 
// Module Name: input_btns
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


module input_btns(
output led0,
    output led1,
    output led2,
    output led3,
    output led4,
    output led5,
    input sw0,
    input sw1,
    input sw2,
    input sw3,
    input sw4,
    input sw5
    );
    
 assign led0 = sw0;
 assign led1 = sw1;
 assign led2 = sw2;
 assign led3 = sw3;
 assign led4 = sw4;
 assign led5 = sw5;

endmodule
