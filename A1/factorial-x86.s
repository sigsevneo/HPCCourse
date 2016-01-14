             	.Ltext0:
             		.section	.rodata
             	.LC0:
0000 456E7465 		.string	"Enter an positive integer: "
     7220616E 
     20706F73 
     69746976 
     6520696E 
             	.LC1:
001c 256C6400 		.string	"%ld"
             	.LC2:
0020 46616374 		.string	"Factorial of %ld = %ld\n"
     6F726961 
     6C206F66 
     20256C64 
     203D2025 
             		.text
             		.globl	main
             	main:
             	.LFB0:
             		.cfi_startproc
0000 55       		push	rbp
             		.cfi_def_cfa_offset 16
             		.cfi_offset 6, -16
0001 4889E5   		mov	rbp, rsp
             		.cfi_def_cfa_register 6
0004 4883EC10 		sub	rsp, 16
0008 BF000000 		mov	edi, OFFSET FLAT:.LC0
     00
000d B8000000 		mov	eax, 0
     00
0012 E8000000 		call	printf
     00
0017 488D45FC 		lea	rax, [rbp-4]
001b 4889C6   		mov	rsi, rax
001e BF000000 		mov	edi, OFFSET FLAT:.LC1
     00
0023 B8000000 		mov	eax, 0
     00
0028 E8000000 		call	__isoc99_scanf
     00
002d 8B45FC   		mov	eax, DWORD PTR [rbp-4]
0030 4898     		cdqe
0032 4889C7   		mov	rdi, rax
0035 E8000000 		call	factorial
     00
003a 4889C2   		mov	rdx, rax
003d 8B45FC   		mov	eax, DWORD PTR [rbp-4]
0040 89C6     		mov	esi, eax
0042 BF000000 		mov	edi, OFFSET FLAT:.LC2
     00
0047 B8000000 		mov	eax, 0
     00
004c E8000000 		call	printf
     00
0051 B8E50C00 		mov	eax, 3301
     00
0056 C9       		leave
             		.cfi_def_cfa 7, 8
0057 C3       		ret
             		.cfi_endproc
             	.LFE0:
             		.globl	factorial
             	factorial:
             	.LFB1:
             		.cfi_startproc
0058 55       		push	rbp
             		.cfi_def_cfa_offset 16
             		.cfi_offset 6, -16
0059 4889E5   		mov	rbp, rsp
             		.cfi_def_cfa_register 6
005c 4883EC10 		sub	rsp, 16
0060 48897DF8 		mov	QWORD PTR [rbp-8], rdi
0064 48837DF8 		cmp	QWORD PTR [rbp-8], 1
     01
0069 7417     		je	.L4
006b 488B45F8 		mov	rax, QWORD PTR [rbp-8]
006f 4883E801 		sub	rax, 1
0073 4889C7   		mov	rdi, rax
0076 E8000000 		call	factorial
     00
007b 480FAF45 		imul	rax, QWORD PTR [rbp-8]
     F8
0080 EB00     		jmp	.L3
             	.L4:
             	.L3:
0082 C9       		leave
             		.cfi_def_cfa 7, 8
0083 C3       		ret
             		.cfi_endproc
             	.LFE1:
             	.Letext0: