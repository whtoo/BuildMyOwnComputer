// Initialized constant values
@3          // A = 3
D=A         // D = A
@i          // i = 16 ( first slot of free space), A = i
M=D         // M[A] = D
@sum        // sum = 17, A = sum
M=0         // M[A] = 0
(LOOP)      // LOOP = 7
@i          // A = i
D=M         // D = M[A]
@100        // A = 100
D=D-A       // D = D - A
@END        // END = 22
D;JGT       // ALU output is D; check if D > 0 goto 22
@i          // A = i
D=M         // D = M[A]
@sum        // A = sum
M=D+M       // M[A] = D + M[A]
@i          // A = i
M=M+1       // M[A] = = M[A] + 1
@LOOP        // A = 7
0;JMP         // goto A
(END)        // END = 22
@END         // A = 22
0;JMP       // goto A