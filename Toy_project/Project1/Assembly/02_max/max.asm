.text
init:
	la x1, words	#c
	lw a1, 4(x1)	#a (9)
	lw a2, 8(x1)	#b (4)

max :
	blt a1, a2, second
	mv a0, a1
	sw a0, 0(x1)	#max = a1
	jal end
second:
	mv a0, a2
	sw a0, 0(x1)	#max = a2
	
end: 
	jal end


.data
.align 16
words: .word 0, 9, 4



	
