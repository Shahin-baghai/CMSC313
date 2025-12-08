	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_printMatrix                    ## -- Begin function printMatrix
	.p2align	4, 0x90
_printMatrix:                           ## @printMatrix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movb	%dil, %al
	movb	%al, -1(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movsbl	-1(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	20(%rax), %r8d
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	-16(%rbp), %rax
	movl	24(%rax), %esi
	movq	-16(%rbp), %rax
	movl	28(%rax), %edx
	movq	-16(%rbp), %rax
	movl	32(%rax), %ecx
	leaq	L_.str.2(%rip), %rdi
	movb	$0, %al
	callq	_printf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -196(%rbp)
	leaq	-48(%rbp), %rdi
	leaq	l___const.main.A(%rip), %rsi
	movl	$36, %edx
	callq	_memcpy
	leaq	-96(%rbp), %rdi
	leaq	l___const.main.B(%rip), %rsi
	movl	$36, %edx
	callq	_memcpy
	leaq	-144(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	leaq	-96(%rbp), %rdx
	callq	_matmult
	leaq	-192(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	_matadd
	leaq	-48(%rbp), %rsi
	movl	$65, %edi
	callq	_printMatrix
	leaq	-96(%rbp), %rsi
	movl	$66, %edi
	callq	_printMatrix
	movl	-192(%rbp), %esi
	movl	-188(%rbp), %edx
	movl	-184(%rbp), %ecx
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-180(%rbp), %esi
	movl	-176(%rbp), %edx
	movl	-172(%rbp), %ecx
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	-168(%rbp), %esi
	movl	-164(%rbp), %edx
	movl	-160(%rbp), %ecx
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB1_2
## %bb.1:
	xorl	%eax, %eax
	addq	$208, %rsp
	popq	%rbp
	retq
LBB1_2:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_matmult                        ## -- Begin function matmult
	.p2align	4, 0x90
_matmult:                               ## @matmult
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
LBB2_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB2_3 Depth 2
                                        ##       Child Loop BB2_5 Depth 3
	cmpl	$3, -28(%rbp)
	jge	LBB2_12
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	$0, -32(%rbp)
LBB2_3:                                 ##   Parent Loop BB2_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB2_5 Depth 3
	cmpl	$3, -32(%rbp)
	jge	LBB2_10
## %bb.4:                               ##   in Loop: Header=BB2_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
	movl	$0, -36(%rbp)
LBB2_5:                                 ##   Parent Loop BB2_1 Depth=1
                                        ##     Parent Loop BB2_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$3, -36(%rbp)
	jge	LBB2_8
## %bb.6:                               ##   in Loop: Header=BB2_5 Depth=3
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	imull	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
## %bb.7:                               ##   in Loop: Header=BB2_5 Depth=3
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB2_5
LBB2_8:                                 ##   in Loop: Header=BB2_3 Depth=2
	jmp	LBB2_9
LBB2_9:                                 ##   in Loop: Header=BB2_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB2_3
LBB2_10:                                ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_11
LBB2_11:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB2_1
LBB2_12:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_matadd                         ## -- Begin function matadd
	.p2align	4, 0x90
_matadd:                                ## @matadd
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
LBB3_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_3 Depth 2
	cmpl	$3, -28(%rbp)
	jge	LBB3_8
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movl	$0, -32(%rbp)
LBB3_3:                                 ##   Parent Loop BB3_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$3, -32(%rbp)
	jge	LBB3_6
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	addl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	imulq	$12, %rcx, %rcx
	addq	%rcx, %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
## %bb.5:                               ##   in Loop: Header=BB3_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB3_3
LBB3_6:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_7
LBB3_7:                                 ##   in Loop: Header=BB3_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB3_1
LBB3_8:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"    [%d %d %d]\n"

L_.str.1:                               ## @.str.1
	.asciz	"%c = |%d %d %d|\n"

L_.str.2:                               ## @.str.2
	.asciz	"    [%d %d %d]\n\n"

	.section	__TEXT,__const
	.p2align	4                               ## @__const.main.A
l___const.main.A:
	.long	1                               ## 0x1
	.long	2                               ## 0x2
	.long	3                               ## 0x3
	.long	4                               ## 0x4
	.long	5                               ## 0x5
	.long	6                               ## 0x6
	.long	7                               ## 0x7
	.long	8                               ## 0x8
	.long	9                               ## 0x9

	.p2align	4                               ## @__const.main.B
l___const.main.B:
	.long	1                               ## 0x1
	.long	2                               ## 0x2
	.long	0                               ## 0x0
	.long	3                               ## 0x3
	.long	4                               ## 0x4
	.long	5                               ## 0x5
	.long	0                               ## 0x0
	.long	6                               ## 0x6
	.long	7                               ## 0x7

	.section	__TEXT,__cstring,cstring_literals
L_.str.3:                               ## @.str.3
	.asciz	"            [%d %d %d]\n"

L_.str.4:                               ## @.str.4
	.asciz	"A*B+A =     |%d %d %d|\n"

.subsections_via_symbols
