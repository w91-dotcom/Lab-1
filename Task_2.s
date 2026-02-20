.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    movl $ram+0x50, %esi
    movl $9, %ecx

fill_loop:
    movb $0xFF, (%esi)
    incl %esi
    loop fill_loop
    ret

.section .note.GNU-stack,"",@progbits