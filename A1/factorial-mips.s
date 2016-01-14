                .Ltext0:
                    .section    .rodata
                .LC0:
0000 456E7465       .string "Enter an positive integer: "
     7220616E 
     20706F73 
     69746976 
     6520696E 
                .LC1:
001c 256C6400       .string "%ld"
                .LC2:
0020 46616374       .string "Factorial of %ld = %ld\n"
     6F726961 
     6C206F66 
     20256C64 
     203D2025 
                    .text
                    .globl  main
                main:
                .LFB0:
                    .cfi_startproc
0000 55             pushq   %rbp
                    .cfi_def_cfa_offset 16
                    .cfi_offset 6, -16
0001 4889E5         movq    %rsp, %rbp
                    .cfi_def_cfa_register 6
0004 4883EC10       subq    $16, %rsp
0008 BF000000       movl    $.LC0, %edi
     00
000d B8000000       movl    $0, %eax
     00
0012 E8000000       call    printf
     00
0017 488D45FC       leaq    -4(%rbp), %rax
001b 4889C6         movq    %rax, %rsi
001e BF000000       movl    $.LC1, %edi
     00
0023 B8000000       movl    $0, %eax
     00
0028 E8000000       call    __isoc99_scanf
     00
002d 8B45FC         movl    -4(%rbp), %eax
0030 4898           cltq
0032 4889C7         movq    %rax, %rdi
0035 E8000000       call    factorial
     00
003a 4889C2         movq    %rax, %rdx
003d 8B45FC         movl    -4(%rbp), %eax
0040 89C6           movl    %eax, %esi
0042 BF000000       movl    $.LC2, %edi
     00
0047 B8000000       movl    $0, %eax
     00
004c E8000000       call    printf
     00
0051 B8E50C00       movl    $3301, %eax
     00
0056 C9             leave
                    .cfi_def_cfa 7, 8
0057 C3             ret
                    .cfi_endproc
                .LFE0:
                    .globl  factorial
                factorial:
                .LFB1:
                    .cfi_startproc
0058 55             pushq   %rbp
                    .cfi_def_cfa_offset 16
                    .cfi_offset 6, -16
0059 4889E5         movq    %rsp, %rbp
                    .cfi_def_cfa_register 6
005c 4883EC10       subq    $16, %rsp
0060 48897DF8       movq    %rdi, -8(%rbp)
0064 48837DF8       cmpq    $1, -8(%rbp)
     01
0069 7417           je  .L4
006b 488B45F8       movq    -8(%rbp), %rax
006f 4883E801       subq    $1, %rax
0073 4889C7         movq    %rax, %rdi
0076 E8000000       call    factorial
     00
007b 480FAF45       imulq   -8(%rbp), %rax
     F8
0080 EB00           jmp .L3
                .L4:
                .L3:
0082 C9             leave
                    .cfi_def_cfa 7, 8
0083 C3             ret
                    .cfi_endproc
                .LFE1:
                .Letext0: