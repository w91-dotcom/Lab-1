.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    movl $ram+0x50, %esi
    movl $9, %ecx

clear_loop:
    movb $0x00, (%esi)
    incl %esi
    loop clear_loop

    ret

.section .note.GNU-stack,"",@progbits
