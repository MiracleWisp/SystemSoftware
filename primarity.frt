: sq dup * ;

: chp dup 3 < if drop 1 else
    2 >r
    repeat
        dup r@ sq swap <
        if 
            dup r@ sq % not
            if 
                drop 0 1
            else 
                r> 1 + >r 0  
            then
        else
            drop 1 1
        then
    until 
    r> drop then ;             
