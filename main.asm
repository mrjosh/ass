global  _main

section  .data
  hello:  db  "Hello from assembly =)", 0xA   ;set the variable hello
  .len    equ $-hello                         ;set the length of hello variable

section  .text
_main:
    mov       rax, 0x02000004
    mov       rdi, 0x1              ;SYSCALL number for writing to STDOUT
    mov       rsi, hello            ;buffer = address to store the bytes read
    mov       rdx, hello.len        ;number of bytes to read
    syscall                         ;make the syscall

    mov       rax, 0x02000001       ;programm exit
    xor       rdi, rdi              ;clear off rax
    syscall                         ;make the syscall
