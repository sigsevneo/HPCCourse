	.file	"vector.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Enter an positive integer: "
.LC1:
	.string	"%d"
.LC2:
	.string	"%d \t"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB24:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$.LC0, %esi
	movl	$1, %edi
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	xorl	%r14d, %r14d
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	subq	$65552, %rsp
	leaq	3(%rsp), %r15
	subq	$65552, %rsp
	leaq	3(%rsp), %rax
	subq	$65552, %rsp
	shrq	$2, %r15
	movq	%rax, -56(%rbp)
	shrq	$2, -56(%rbp)
	leaq	0(,%r15,4), %rbx
	movq	-56(%rbp), %rax
	leaq	0(,%rax,4), %r13
	leaq	3(%rsp), %rax
	movq	%rax, -64(%rbp)
	shrq	$2, -64(%rbp)
	movq	-64(%rbp), %rax
	leaq	0(,%rax,4), %r12
	xorl	%eax, %eax
	call	__printf_chk
	.p2align 4,,10
	.p2align 3
.L3:
	leaq	(%rbx,%r14), %rsi
	xorl	%eax, %eax
	movl	$.LC1, %edi
	addq	$4, %r14
	call	__isoc99_scanf
	cmpq	$65536, %r14
	jne	.L3
	movl	$.LC0, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	xorl	%r14d, %r14d
	call	__printf_chk
	.p2align 4,,10
	.p2align 3
.L5:
	leaq	0(%r13,%r14), %rsi
	xorl	%eax, %eax
	movl	$.LC1, %edi
	addq	$4, %r14
	call	__isoc99_scanf
	cmpq	$65536, %r14
	jne	.L5
	movq	%rbx, %rax
	andl	$15, %eax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	je	.L15
	movq	-56(%rbp), %rcx
	movl	0(,%r15,4), %edx
	movq	-64(%rbp), %rdi
	addl	0(,%rcx,4), %edx
	cmpl	$1, %eax
	movl	%edx, 0(,%rdi,4)
	jbe	.L16
	movl	4(,%r15,4), %edx
	addl	4(,%rcx,4), %edx
	cmpl	$2, %eax
	movl	%edx, 4(,%rdi,4)
	jbe	.L17
	movl	8(,%r15,4), %edx
	addl	8(,%rcx,4), %edx
	movl	$16381, %r11d
	movl	$3, %r14d
	movl	%edx, 8(,%rdi,4)
.L6:
	movl	$16384, %r9d
	xorl	%edx, %edx
	subl	%eax, %r9d
	movl	%eax, %eax
	movl	%r9d, %ecx
	leaq	0(,%rax,4), %rsi
	xorl	%eax, %eax
	shrl	$2, %ecx
	leal	0(,%rcx,4), %r10d
	leaq	(%rbx,%rsi), %r8
	leaq	0(%r13,%rsi), %rdi
	addq	%r12, %rsi
	.p2align 4,,10
	.p2align 3
.L12:
	movdqu	(%rdi,%rax), %xmm0
	addl	$1, %edx
	paddd	(%r8,%rax), %xmm0
	movdqu	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpl	%ecx, %edx
	jb	.L12
	addl	%r10d, %r14d
	subl	%r10d, %r11d
	cmpl	%r10d, %r9d
	je	.L10
	movslq	%r14d, %rax
	movl	(%rbx,%rax,4), %edx
	addl	0(%r13,%rax,4), %edx
	cmpl	$1, %r11d
	movl	%edx, (%r12,%rax,4)
	leal	1(%r14), %eax
	je	.L10
	cltq
	movl	(%rbx,%rax,4), %edx
	addl	0(%r13,%rax,4), %edx
	cmpl	$2, %r11d
	movl	%edx, (%r12,%rax,4)
	leal	2(%r14), %eax
	je	.L10
	cltq
	movl	(%rbx,%rax,4), %edx
	addl	0(%r13,%rax,4), %edx
	movl	%edx, (%r12,%rax,4)
.L10:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L14:
	movl	(%r12,%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC2, %esi
	movl	$1, %edi
	addq	$4, %rbx
	call	__printf_chk
	cmpq	$65536, %rbx
	jne	.L14
	movl	$10, %edi
	call	putchar
	leaq	-40(%rbp), %rsp
	movl	$3301, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L15:
	.cfi_restore_state
	movl	$16384, %r11d
	xorl	%r14d, %r14d
	jmp	.L6
.L17:
	movl	$16382, %r11d
	movl	$2, %r14d
	jmp	.L6
.L16:
	movl	$16383, %r11d
	movl	$1, %r14d
	jmp	.L6
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
