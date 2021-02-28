// cal `2 * 3` and output into R0
@2
D = A
@1
M = D  // R1 = 2
@3
D = A
@2
M = D  // R2 = 3
@0
M = 0  // R0 = 0
@1
D = M

@END
D;JLT

(LOOP)
@2
D = M

@END
D;JLT

@1
D = M   // D = M[1]

@0
M = D + M  // M[0] = M[0] + D
@2
M = M - 1  // M[2] = M[2] - 1


@LOOP
0;JMP

(END)
@END
0;JMP