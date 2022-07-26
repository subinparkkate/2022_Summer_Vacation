.text
init:
	la x1, words
	lw a1, 4(x1)
	lw a2, 8(x1)

start:
	beq a1, a2, Then
	sub a3, a1,a2
	sw a3, 0(x1)
	jal end

Then: 
	add a3, a1,a2
	sw a3, 0(x1)
	
end: 
	jal end

.data
.align 16
words: .word 0, 5, 4


