`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2023 12:46:52 PM
// Design Name: 
// Module Name: CD_BCD7Seg_c
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


module CD_BCD7Seg_c(D,C,B,A,ya,yb,yc,yd,ye,yf,yg);

    input D,C,B,A;
    output ya,yb,yc,yd,ye,yf,yg;
    
    reg ya,yb,yc,yd,ye,yf,yg;
    
    always @(D or C or B or A)
    
    
    case({D,C,B,A})
        4'b0000:{ya,yb,yc,yd,ye,yf,yg}=7'b1001110;
        4'b0001:{ya,yb,yc,yd,ye,yf,yg}=7'b1110111;
        4'b0010:{ya,yb,yc,yd,ye,yf,yg}=7'b1111001;
        4'b0011:{ya,yb,yc,yd,ye,yf,yg}=7'b1001001;
        4'b0100:{ya,yb,yc,yd,ye,yf,yg}=7'b1111111;
        4'b0101:{ya,yb,yc,yd,ye,yf,yg}=7'b1111110;
        4'b0110:{ya,yb,yc,yd,ye,yf,yg}=7'b1111011;
        4'b0111:{ya,yb,yc,yd,ye,yf,yg}=7'b1111111;
        4'b1000:{ya,yb,yc,yd,ye,yf,yg}=7'b1110000; 
        4'b1001:{ya,yb,yc,yd,ye,yf,yg}=7'b1011111;
        4'b1010:{ya,yb,yc,yd,ye,yf,yg}=7'b1011011;
        4'b1011:{ya,yb,yc,yd,ye,yf,yg}=7'b0110011;
        4'b1100:{ya,yb,yc,yd,ye,yf,yg}=7'b1111001;
        4'b1101:{ya,yb,yc,yd,ye,yf,yg}=7'b1101101;
        4'b1110:{ya,yb,yc,yd,ye,yf,yg}=7'b0110000;
        4'b1111:{ya,yb,yc,yd,ye,yf,yg}=7'b1111110;
    
    endcase
    
endmodule

