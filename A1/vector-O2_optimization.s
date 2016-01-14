             	.Ltext0:
             		.section	.rodata.str1.1,"aMS",@progbits,1
             	.LC0:
0000 456E7465 		.string	"Enter an positive integer: "
     7220616E 
     20706F73 
     69746976 
     6520696E 
             	.LC1:
001c 256C6400 		.string	"%ld"
             	.LC2:
0020 256C6420 		.string	"%ld \t"
     0900
             		.section	.text.startup,"ax",@progbits
             		.p2align 4,,15
             		.globl	main
             	main:
             	.LFB13:
             		.cfi_startproc
             	.LVL0:
0000 55       		pushq	%rbp
             		.cfi_def_cfa_offset 16
             		.cfi_offset 6, -16
             	.LBB8:
             	.LBB9:
0001 BE000000 		movl	$.LC0, %esi
     00
0006 BF010000 		movl	$1, %edi
     00
000b 31C0     		xorl	%eax, %eax
             	.LBE9:
             	.LBE8:
000d 53       		pushq	%rbx
             		.cfi_def_cfa_offset 24
             		.cfi_offset 3, -24
000e 4883EC68 		subq	$104, %rsp
             		.cfi_def_cfa_offset 128
0012 488D6C24 		leaq	20(%rsp), %rbp
     14
0017 4889E3   		movq	%rsp, %rbx
             	.LBB11:
             	.LBB10:
001a E8000000 		call	__printf_chk
     00
             	.LVL1:
             	.L3:
             	.LBE10:
             	.LBE11:
001f 4889DE   		movq	%rbx, %rsi
0022 31C0     		xorl	%eax, %eax
0024 BF000000 		movl	$.LC1, %edi
     00
0029 4883C304 		addq	$4, %rbx
002d E8000000 		call	__isoc99_scanf
     00
             	.LVL2:
0032 4839EB   		cmpq	%rbp, %rbx
0035 75E8     		jne	.L3
             	.LVL3:
0037 488D5C24 		leaq	32(%rsp), %rbx
     20
             	.LBB12:
             	.LBB13:
003c BE000000 		movl	$.LC0, %esi
     00
0041 BF010000 		movl	$1, %edi
     00
0046 31C0     		xorl	%eax, %eax
0048 488D6B14 		leaq	20(%rbx), %rbp
004c E8000000 		call	__printf_chk
     00
             	.LVL4:
             	.L5:
             	.LBE13:
             	.LBE12:
0051 4889DE   		movq	%rbx, %rsi
0054 31C0     		xorl	%eax, %eax
0056 BF000000 		movl	$.LC1, %edi
     00
005b 4883C304 		addq	$4, %rbx
005f E8000000 		call	__isoc99_scanf
     00
             	.LVL5:
0064 4839EB   		cmpq	%rbp, %rbx
0067 75E8     		jne	.L5
0069 31C0     		xorl	%eax, %eax
             	.L7:
007a 4883F814 		cmpq	$20, %rax
007e 75EB     		jne	.L7
0080 488D5C24 		leaq	64(%rsp), %rbx
     40
0085 488D6C24 		leaq	84(%rsp), %rbp
     54
006b 8B1404   		movl	(%rsp,%rax), %edx
006e 03540420 		addl	32(%rsp,%rax), %edx
0072 89540440 		movl	%edx, 64(%rsp,%rax)
0076 4883C004 		addq	$4, %rax
             	.L9:
             	.LVL6:
             	.LBB14:
             	.LBB15:
008a 8B13     		movl	(%rbx), %edx
008c 31C0     		xorl	%eax, %eax
008e BE000000 		movl	$.LC2, %esi
     00
0093 BF010000 		movl	$1, %edi
     00
0098 4883C304 		addq	$4, %rbx
009c E8000000 		call	__printf_chk
     00
             	.LVL7:
             	.LBE15:
             	.LBE14:
00a1 4839EB   		cmpq	%rbp, %rbx
00a4 75E4     		jne	.L9
00a6 4883C468 		addq	$104, %rsp
             		.cfi_def_cfa_offset 24
00aa B8E50C00 		movl	$3301, %eax
     00
00af 5B       		popq	%rbx
             		.cfi_def_cfa_offset 16
00b0 5D       		popq	%rbp
             		.cfi_def_cfa_offset 8
00b1 C3       		ret
             		.cfi_endproc
             	.LFE13:
             		.text
             	.Letext0:
