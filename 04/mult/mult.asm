// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//以下是輸入值的部分
@2
M=0     //M2是解答位，先將他歸0

@10     //R0輸入10(10放進a)
D=A     //將D輸入10
@0      //a=0
M=D     //將10(D)放進momory[0]
@5      //R1輸入5
D=A     
@1      
M=D     
//此處省掉D=M，如果是把10加五次則需要
//@1
//D=M
@2      
M=D+M       //將M1加到A2

@0
M=M-1       //加過一次了所以M2-1

D=M
@7
D;JGT       //如果D>0時跳回第七行

@22
0;JMP       //卡在迴圈，讓他不要亂跑