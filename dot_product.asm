    segment .data
a:  dd  1, 2, 3, 4, 5       ; create first array
b:  dd  6, 7, 8, 9, 10      ; create second array
count   dq  5               ; store count
product dq  0               ; answer in memory
    
    segment .text
    global main
main:
    push rbp
    mov rbp, rsp
    
    xor rax, rax            ; clear rax
    xor rbx, rbx            ; clear rbx
    xor rdi, rdi            ; clear rdi
    
    mov rdi, [count]        ; move count to register used for count
    xor rcx, rcx            ; clear count register (cx)

    
for:
    cmp rcx, rdi            ; compare rcx to count 
    je end_for              ; jump to end_for if rcx = count
    mov rax,[a+rcx*4]       ; move a[i] to rax
    mul dword [b+rcx*4]     ; a[i] * b[i]
    add [product], rax      ; add products
    inc rcx                 ; increment count by 1
    jmp for                 ; jump to beginning of loop

end_for:
    leave
    ret
