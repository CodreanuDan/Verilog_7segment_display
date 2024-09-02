`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2023 01:07:09 PM
// Design Name: 
// Module Name: CD_BCD7Seg_eq_tb
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


module CD_BCD7Seg_eq_tb;

 reg D,C,B,A;
 wire yas,ybs,ycs,yds,yes,yfs,ygs;
 wire yac,ybc,ycc,ydc,yec,yfc,ygc;
 wire eq1,eq2,eq3,eq4,eq5,eq6,eq7;
 CD_BCD7Seg_s uut1(D,C,B,A,yas,ybs,ycs,yds,yes,yfs,ygs);
 CD_BCD7Seg_c uut2(D,C,B,A,yac,ybc,ycc,ydc,yec,yfc,ygc);
 
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
  
 assign eq1=(yas==yac);
 assign eq2=(ybs==ybc);
 assign eq3=(ycs==ycc);
 assign eq4=(yds==ydc);
 assign eq5=(yes==yec);
 assign eq6=(yfs==yfc);
 assign eq7=(ygs==ygc);

 initial
 $monitor("D=%b,C=%b,B=%b,A=%b,yas=%b,ybs=%b,ycs=%b,yds=%b,yes=%b,yfs=%b,ygs=%b",
 "yac=%b,yab=%b,ycc=%b,ydc=%b,yec=%b,yfc=%b,ygc=%b",
 "eq1=%b,eq2=%b,eq3=%b,eq4=%b,eq5=%b,eq6=%b,eq7=%b"
 ,D,C,B,A,yas,ybs,ycs,yds,yes,yfs,ygs,
 yac,ybc,ycc,ydc,yec,yfc,ygc,
 eq1,eq2,eq3,eq4,eq5,eq6,eq7);
    
  
endmodule
