`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/26/2023 04:46:56 PM
// Design Name: 
// Module Name: CD_BCD7Seg_s
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

module CD_BCD7Seg_s(D,C,B,A,ya,yb,yc,yd,ye,yf,yg);

    input A,B,C,D;
    output ya,yb,yc,yd,ye,yf,yg; 
    
    wire wa1,wa2; //wire pemtru output ya
    wire wb1,wb2,wb3; //wire pentru output yb 
    wire wc1,wc2,wc3,wc4,wc5;//wire pentru output yc
    wire wd1,wd2,wd3,wd4,wd5,wd6,wd7;//wire pentru output yd
    wire we1,we2,we3;//wire pentru output ye
    wire wf1,wf2,wf3,wf4,wf5;//wire pentru output yf
    wire wg1,wg2,wg3,wg4,wg5;//wire pentru output yg
    
    not(wa,A);// wire notA
    not(wb,B);// wire notB
    not(wc,C);// wire notC
    not(wd,D);// wire notD
  
  // iesirea a in ordinea ec. simplificate:
  
  // gr.1 D`
  // gr.2 B`
  and(wa1,A,C);// gr.3 AC
  and(wa2,wc,wa); // gr.4 C`A`
  or(ya,wd,wb,wa1,wa2);//output ya
  
  // iesirea b in ordinea ec. simplificate: 
  
  //gr.1 C
  and(wb1,D,wb,wa);//gr.2 DB`A`
  and(wb2,D,B,A);//gr.3  DBA
  and(wb3,wd,B,wa);//gr.4 D`BA`
  and(wb4,wd,wb,A);//gr.5 D`B`A
  or(yb,C,wb1,wb2,wb3,wb4);//output yb
  
  // iesirea c in ordinea ec. simplificate:
  
  and(wc1,B,wa);//gr.1 BA`
  and(wc2,C,wa);//gr.2 CA`
  and(wc3,C,B);//gr.3 BC
  and(wc4,D,wc);//gr.4 DC`
  and(wc5,wd,wb,A);//gr.5 D`B`A
  or(yc,wc1,wc2,wc3,wc4,wc5);//output yc
  
  // iesirea d in ordinea ec. simplificate:
  
  and(wd1,wd,C);//gr.1 D`C
  and(wd2,wd,B);//gr.2 DB`
  and(wd3,wd,wa);//gr.3 D`A`
  and(wd4,A,C);//gr.4 AC
  and(wd5,C,wb,wa);//gr.5 CB`A`
  and(wd6,D,wb,A);//gr.6 DB`A
  and(wd7,D,wc,B,wa);//gr.7 DCB`A`
  or(yd,wd1,wd2,wd3,wd4,wd5,wd6,wd7);//output yd
  
  // iesirea e in ordinea ec. simplificate:
  
  and(we1,wd,wb);//gr.1 D`B`
  and(we2,wb,A);//gr.2 B`A
  and(we3,C,A);//gr.3 CA
  or(ye,we1,we2,we3);//output ye

  // iesirea f in ordinea ec. simplificate:
  
  and(wf1,wd,wb);//gr.1 D`B`
  and(wf2,wd,C);//gr.2 D`C
  and(wf3,C,B,A);//gr.3 CBA
  and(wf4,D,wc,B);//gr.4 DC`B
  and(wf5,D,wc,A);//gr.5 DC`A
  or(yf,wf1,wf2,wf3,wf4,wf5);//output yf
  
  // iesirea g in ordinea ec. simplificate:
  
  and(wg1,wd,B);//gr.1 D`B
  and(wg2,wc,A);//gr.2 C`A
  and(wg3,C,wb,wa);//gr.3 CB`A`
  and(wg4,D,wb,A);//gr.4 DB`A
  and(wg5,wc,B);//gr.5 C`B
  or(yg,wg1,wg2,wg3,wg4,wg5);//output yg
        
endmodule
