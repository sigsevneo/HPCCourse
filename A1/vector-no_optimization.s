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
0020 256C6420 		.string	"%ld \t"
     0900
             		.text
             		.globl	main
             	main:
             	.LFB0:
             		.cfi_startproc
0000 55       		pushq	%rbp
             		.cfi_def_cfa_offset 16
             		.cfi_offset 6, -16
0001 4889E5   		movq	%rsp, %rbp
             		.cfi_def_cfa_register 6
0004 4883EC70 		subq	$112, %rsp
0008 BF000000 		movl	$.LC0, %edi
     00
000d B8000000 		movl	$0, %eax
     00
0012 E8000000 		call	printf
     00
0017 C7459C00 		movl	$0, -100(%rbp)
     000000
001e EB27     		jmp	.L2
             	.L3:
0043 83459C01 		addl	$1, -100(%rbp)
0020 488D45A0 		leaq	-96(%rbp), %rax
0024 8B559C   		movl	-100(%rbp), %edx
0027 4863D2   		movslq	%edx, %rdx
002a 48C1E202 		salq	$2, %rdx
002e 4801D0   		addq	%rdx, %rax
0031 4889C6   		movq	%rax, %rsi
0034 BF000000 		movl	$.LC1, %edi
     00
0039 B8000000 		movl	$0, %eax
     00
003e E8000000 		call	__isoc99_scanf
     00
             	.L2:
0047 837D9C04 		cmpl	$4, -100(%rbp)
004b 7ED3     		jle	.L3
004d BF000000 		movl	$.LC0, %edi
     00
0052 B8000000 		movl	$0, %eax
     00
0057 E8000000 		call	printf
     00
005c C7459C00 		movl	$0, -100(%rbp)
     000000
0063 EB27     		jmp	.L4
             	.L5:
0088 83459C01 		addl	$1, -100(%rbp)
0065 488D45C0 		leaq	-64(%rbp), %rax
0069 8B559C   		movl	-100(%rbp), %edx
006c 4863D2   		movslq	%edx, %rdx
006f 48C1E202 		salq	$2, %rdx
0073 4801D0   		addq	%rdx, %rax
0076 4889C6   		movq	%rax, %rsi
0079 BF000000 		movl	$.LC1, %edi
     00
007e B8000000 		movl	$0, %eax
     00
0083 E8000000 		call	__isoc99_scanf
     00
             	.L4:
008c 837D9C04 		cmpl	$4, -100(%rbp)
0090 7ED3     		jle	.L5
0092 C7459C00 		movl	$0, -100(%rbp)
     000000
0099 EB21     		jmp	.L6
             	.L7:
00b8 83459C01 		addl	$1, -100(%rbp)
009b 8B459C   		movl	-100(%rbp), %eax
009e 4898     		cltq
00a0 8B5485A0 		movl	-96(%rbp,%rax,4), %edx
00a4 8B459C   		movl	-100(%rbp), %eax
00a7 4898     		cltq
00a9 8B4485C0 		movl	-64(%rbp,%rax,4), %eax
00ad 01C2     		addl	%eax, %edx
00af 8B459C   		movl	-100(%rbp), %eax
00b2 4898     		cltq
00b4 895485E0 		movl	%edx, -32(%rbp,%rax,4)
             	.L6:
00bc 837D9C04 		cmpl	$4, -100(%rbp)
00c0 7ED9     		jle	.L7
00c2 C7459C00 		movl	$0, -100(%rbp)
     000000
00c9 EB1E     		jmp	.L8
             	.L9:
00e5 83459C01 		addl	$1, -100(%rbp)
00cb 8B459C   		movl	-100(%rbp), %eax
00ce 4898     		cltq
00d0 8B4485E0 		movl	-32(%rbp,%rax,4), %eax
00d4 89C6     		movl	%eax, %esi
00d6 BF000000 		movl	$.LC2, %edi
     00
00db B8000000 		movl	$0, %eax
     00
00e0 E8000000 		call	printf
     00
             	.L8:
00e9 837D9C04 		cmpl	$4, -100(%rbp)
00ed 7EDC     		jle	.L9
00ef B8E50C00 		movl	$3301, %eax
     00
00f4 C9       		leave
             		.cfi_def_cfa 7, 8
00f5 C3       		ret
             		.cfi_endproc
             	.LFE0:
             	.Letext0: