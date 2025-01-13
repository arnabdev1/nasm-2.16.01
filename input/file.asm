section .data
    msg db 'Hello, NASM!', 0

section .text
    global _start

_start:
    mov eax, 4         ; Syscall for write
    mov ebx, 1         ; File descriptor (stdout)
    mov ecx, msg       ; Pointer to message
    mov edx, 14        ; Message length
    int 0x80           ; Call kernel

    mov eax, 1         ; Exit syscall
    int 0x80

