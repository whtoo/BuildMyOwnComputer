// if(key is pressed), then draw black pixel.
// otherwise, clear pixel.    

    @24575 // addr(KBD) - 1
    D = A

    @0
    M = D // Max address for pixels

    @SCREEN
    D = A
    @1
    M = D
    @2
    M = -1 // first fill pixel vector is black (1111111111111111)
(LOOP)
    @KBD
    D=M
    @FILL // if (key is pressed), then goto FILL.
    D;JGT

    @CLEAR // Otherwise, goto CLEAR.
    0;JMP
(FILL)
    @0
    D = M
    @1
    D = D - M
    @LOOP
    D;JLT   // Check if fill up, then goto loop.
    //Draw pixel
    @1
    D = M // Save current pixel address to D
    A = M // Change A to current pixel address

    M = -1 // Fill pixel vector is black (111111111111)

    @1
    M = D + 1 // Increment D and store in M[A]

    @LOOP
    0;JMP
(CLEAR)
    @SCREEN
    D = A   // Save SCREEN address to D
    @1
    D = D - M // Calc addr(SCREEN) - addr(current pixel) and store in D
    @LOOP
    D;JGT   // If D > 0, then goto LOOP
            // Otherwise, go on.
    @1
    D = M // Save addr(current pixel) to D
    A = M // Save addr(current pixel) to A
    M = 0 // Reset current pixel

    @1
    M = D - 1 // Descrease addr(current pixel) and store in M[A]

    @LOOP
    0;JMP