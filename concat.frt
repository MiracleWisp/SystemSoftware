: concat 
	over count over count 1 + + ( count final length ) 
	heap-alloc dup >r 
	rot 
	dup count >r ( save str1 len)
	dup >r ( save str1 addr ) 
	string-copy
	r> heap-free ( free str1 )
	r> r@ + swap 
	dup >r ( save str2 addr)
	string-copy 
	r> heap-free ( free str2 )
	r> prints
;
