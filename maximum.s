#
# Find the maximum, given a list of numbers
#
# Registers:
# %edi - index of current item
# %ebx - max element found
# %eax - current item
#
# Preconditions:
#
# data_items contains the list of numbers. 
# 0 is used to terminate the list
#

.section .data

data_items:                     #14 x 4 = 56 bytes long
 .long 3,67,34,222,45,75,54,34,44,33,22,11,66,0

.section .text

.globl _start

_start:
movl $0, %edi 
movl data_items(,%edi,4), %eax  #Indexed Addressing
movl %eax, %ebx

begin_loop:
    cmpl $0, %eax
    je exit_loop
    incl %edi
    movl data_items(,%edi,4), %eax
    cmpl %ebx, %eax
    jle begin_loop

    movl %eax, %ebx
    jmp begin_loop

exit_loop:
    movl $1, %eax
    int $0x80

