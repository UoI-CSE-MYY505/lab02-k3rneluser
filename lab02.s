
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
findLast_forwards_withIndex:
    add  s0, zero, zero  # return address
    add  t2, zero, zero
loop:
    beq a1, t2, done
    slli t1, t2, 2
    add t1, t1, a0
    lw t3, 0(t1)
    bne t3, a2, next
    add s0, t1, zero
next:    
    addi t2, t2, 1
    j loop
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
