.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    movl $0, %eax
    movl $1, %ebx
    movl $10, %ecx

sum_loop:
    addl %ebx, %eax
    incl %ebx
    loop sum_loop

    # Store final sum at RAM[0x50]
    movb %al, ram+0x50

    ret

.section .note.GNU-stack,"",@progbits
