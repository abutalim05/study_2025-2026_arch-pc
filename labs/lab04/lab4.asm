section .data
    hello db 'Рамазанов Абуталим',0  ; 

section .text
    global _start

_start:
    mov eax, 4      ; системный вызов write
    mov ebx, 1      ; файловый дескриптор stdout
    mov ecx, hello  ; указатель на строку
    mov edx, 12     ; длина строки (подберите под ваше ФИО)
    int 0x80
    
    ; завершение программы
    mov eax, 1
    xor ebx, ebx
    int 0x80
