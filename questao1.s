.data
array:  .word  10, 4, 8, 15, 7

.text
.globl main

find_max_in_array:
    lw $t0, ($a0)
    lw $t1, 4($a0)
    bgt $t1, $t0, check_t1_t2
    move $t1, $t0

check_t1_t2:
    lw $t0, 8($a0)
    bgt $t0, $t1, check_t0_t2
    move $t0, $t1

check_t0_t2:
    lw $t1, 12($a0)
    bgt $t1, $t0, check_t1_t4
    move $t1, $t0

check_t1_t4:
    lw $t0, 16($a0)
    bgt $t0, $t1, update_max
    move $t0, $t1

update_max:
    move $v0, $t0
    jr $ra

main:
    la $a0, array
    jal find_max_in_array
    move $a0, $v0
    li $v0, 1
    syscall

    li $v0, 10
    syscall

