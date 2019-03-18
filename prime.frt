: prime dup 2 < if drop 0 else 
      1 repeat 
            swap dup rot 1 + dup -rot % not 
        until = ;

: prime_allot 
    prime 
    1 allot
    dup -rot 
    ! ;
    
