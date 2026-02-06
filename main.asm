extern  printf
extern  scanf
extern  getchar

section .data
    fmt db "%d",0
    msg db "Welcome to my even or odd checker!",10 , 0
    entry_msg db "Enter number: ", 0
    odd_msg db "Your number is odd!", 10, 0
    even_msg db "Your number is even!", 10, 0
    done_msg db "Press any key to exit...", 0

section .bss
    num resq 1

section .text
global main

check_nums:
    push    rbp
    mov     rbp,rsp
    mov     rcx, [rel num]  
    mov     rax, rcx
    xor     rdx, rdx  
    mov     rbx, 2
    div     rbx
    mov     rax, rdx
    pop     rbp
    ret

main:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 32
    mov     rcx, msg
    call    printf
    mov     rcx, entry_msg
    call    printf
    mov     rcx, fmt
    mov     rdx, num
    call    scanf
    call    getchar
    call    check_nums
    cmp     rax, 0
    je      .even

.odd:
    mov     rcx, odd_msg
    call    printf
    jmp     .done

.even:
    mov     rcx, even_msg
    call    printf

.done:
    mov     rcx, done_msg
    call    printf
    call    getchar
    add     rsp, 32
    pop     rbp 
    mov     rax, 0
    ret