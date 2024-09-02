`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2023 11:55:01 AM
// Design Name: 
// Module Name: CD_BCD7Seg_s_tb
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


module CD_BCD7Seg_s_tb;

   reg A,B,C,D;
   wire ya,yb,yc,yd,ye,yf,yg;
   CD_BCD7Seg_s uut(D,C,B,A,ya,yb,yc,yd,ye,yf,yg);
   
   initial begin
      D=0;C=0;B=0;A=0;
      #10D=0;C=0;B=0;A=1;
      #10D=0;C=0;B=1;A=0;
      #10D=0;C=0;B=1;A=1;
      #10D=0;C=1;B=0;A=0;
      #10D=0;C=1;B=0;A=1;
      #10D=0;C=1;B=1;A=0;
      #10D=0;C=1;B=1;A=1;
      #10D=1;C=0;B=0;A=0;
      #10D=1;C=0;B=0;A=1;
      #10D=1;C=0;B=1;A=0;
      #10D=1;C=0;B=1;A=1;
      #10D=1;C=1;B=0;A=0;
      #10D=1;C=1;B=0;A=1;
      #10D=1;C=1;B=1;A=0;
      #10D=1;C=1;B=1;A=1;
      
   end
   
   initial
   $monitor("D=%b,C=%b,B=%b,A=%b,ya=%b,yc=%b,yc=%b,yA=%b,ye=%b,yf=%b,yg=%b",D,C,B,A,ya,yb,yc,yd,ye,yf,yg);
   
endmodule
