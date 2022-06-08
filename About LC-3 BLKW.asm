  ; This is an exapmle program for the use of .blkw
  ; We will get 10 ASCII characters and store them in the mermory set by .BLKW
  ;
  ;
  ; Initialization
  .ORIG x3000
            LEA    R1 INPUT ;get the first address set by .blkw
            ADD    R2 R1 #9 ;ATTENTION: IF YOU WANT 2 PLACE ,JUST PLUS 1 ,IF YOU WANT 10 PLACES, JUST PLUS 9!!!
            NOT    R2 R2
            ADD    R2 R2 #1 ;let R2 equals -(R1+10),when R1 plus R2 equals 0,the program is finished
  ;
  ;Loop begins here
    getchar IN            ;get the character and store it in R0
            STR    R0 R1 0  ;Store the char(which is in R0) into the memory (with its address in R1)
            ADD    R3 R2 R1
            BRz    Done
            ADD    R1 R1 1
            BR     getchar
  ;Loop finishes
    Done    HALT
    INPUT   .BLKW 10
  .END
