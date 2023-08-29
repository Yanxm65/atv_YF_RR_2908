.text
.globl main

main:
    li $t0, 12
    li $t1, 5
    add $t2, $t0, $t0
    sub $t2, $t2, $t1

    li $v0, 10
    syscall

