	.file	"fibonacci.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB14:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	call	___main
	movl	$0, 44(%esp)
	movl	$1, 40(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	movl	$0, 32(%esp)
	jmp	L2
L5:
	cmpl	$1, 32(%esp)
	jg	L3
	movl	32(%esp), %eax
	movl	%eax, 36(%esp)
	jmp	L4
L3:
	movl	44(%esp), %edx
	movl	40(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 36(%esp)
L4:
	movl	40(%esp), %eax
	movl	%eax, 44(%esp)
	movl	36(%esp), %eax
	movl	%eax, 40(%esp)
	addl	$1, 32(%esp)
L2:
	movl	28(%esp), %eax
	cmpl	%eax, 32(%esp)
	jl	L5
	movl	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
