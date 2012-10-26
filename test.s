.section .data

data_items:                     #14 x 4 = 56 bytes long
 .long 3,67,34,222,45,75,54,34,44,33,22,11,66,0

.section .text

.globl _start

_start:
movl $0, %edi 
movl data_items(,%edi,4), %eax  #Indexed Addressing
movl data_items(,%edi,4), %ecx
subl %ecx, %eax
movl %eax, %ebx
movl $1, %eax
int $0x80
