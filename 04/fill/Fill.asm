@8192 //24575-16384
D=A
@10  //把8192存起來  
M=D
@24576 //讀取鍵盤有沒有被按
D=M
@4
D;JEQ  //沒被按就會重複判斷這部分
@16384 //按了以後，從16384開始畫線
D=A    
A=D    //回存
M=-1    //畫黑
D=D+1   //螢幕的部分+1
@10
M=M-1   //8192-1 
M;JNE   //全黑才往後
@8192    //跟前面一樣
D=A
@26
M=D
@24576
D=M
@20
D;JNE    //按了就會重複判斷這部分
@16384    //沒按了以後，從16384開始弄白
D=A
A=D        //回存
D=D+1
M=0
@26
M=M-1
M;JNE
@0        //重複全部的code
0;JMP

// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

