#
#A simple program to send a successful exit status to the Linux kernel
#

.section .data
# List memory locations needed for storing data

.section .text
# List all the program instructions

.globl _start
# _start is a goto symbol
# A symbol is marked with .globl if it signifies the start location of a program
#
_start: 
#Loading the exit system call
movl $1, %eax
#Loading status code into ebx
movl $0, %ebx
#Signalling interrupt to execute system call
int $0x80
