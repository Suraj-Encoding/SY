bits 64
section .data
msg db "Hello World"
msg_len equ $-msg

section .text
global _main
_main:
mov rax,1
mov rdi,1
mov rsi,msg
mov rdx,msg_len
syscall
mov rax,60
mov rdi,0
syscall