.text
	li t0, 0	#cumulative sum
	li a0, 0	#final sum

init:
	la x1, words 
	lw a1, 4(x1)	#5 //multiplier
	lw a2, 8(x1)	#3 //multiplicand
	
multiply:
	add  t0, t0, a1
	addi a2, a2, -1      
	bgt  a2, zero, multiply
add a0, t0, zero

sw a0, 0(x1)
end:  jal end

.align 16
.data
words: .word 0, 5, 3

