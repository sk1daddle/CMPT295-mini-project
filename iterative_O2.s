	.file	"iterativeMerge.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"cannot create std::vector larger than max_size()"
#NO_APP
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4
	.globl	_Z18mergeSortIterativeRSt6vectorIiSaIiEE
	.type	_Z18mergeSortIterativeRSt6vectorIiSaIiEE, @function
_Z18mergeSortIterativeRSt6vectorIiSaIiEE:
.LFB2421:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2421
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$1, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$2, %rax
	movq	%rdi, 88(%rsp)
	movq	%rax, 104(%rsp)
	movl	%eax, 64(%rsp)
	cmpl	$1, %eax
	jle	.L1
.L2:
	movq	$0, 32(%rsp)
	movl	64(%rsp), %eax
	xorl	%r15d, %r15d
	subl	%r12d, %eax
	movl	%eax, 80(%rsp)
	leal	(%r12,%r12), %eax
	movl	%eax, 68(%rsp)
	cltq
	salq	$2, %rax
	movq	%rax, 72(%rsp)
	movslq	%r12d, %rax
	movq	%rax, 8(%rsp)
	salq	$2, %rax
	movq	%rax, 40(%rsp)
	movl	104(%rsp), %eax
	subl	%r12d, %eax
	movl	%eax, 48(%rsp)
	leal	-1(%r12), %eax
	movl	%eax, 84(%rsp)
	cltq
	leaq	4(,%rax,4), %r14
.L33:
	movl	48(%rsp), %ebx
	movq	8(%rsp), %rax
	movl	%r15d, 4(%rsp)
	movabsq	$2305843009213693951, %rcx
	movl	%r15d, 52(%rsp)
	leal	(%r15,%r12,2), %r15d
	cmpl	%r15d, 64(%rsp)
	movq	%rax, 24(%rsp)
	cmovge	%r12d, %ebx
	cmpq	%rax, %rcx
	jb	.L78
	cmpq	$0, 8(%rsp)
	je	.L79
	movq	8(%rsp), %rax
	leaq	0(,%rax,4), %r13
	movq	%r13, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	cmpq	$1, 8(%rsp)
	movl	$0, (%rax)
	movq	%rax, %rbp
	je	.L80
	leaq	4(%rax), %rdi
	leaq	(%rax,%r13), %rax
	cmpq	%rax, %rdi
	je	.L75
	leaq	-4(%r13), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L75:
	movslq	%ebx, %rax
	movq	%r13, 24(%rsp)
	movabsq	$2305843009213693951, %rcx
	movq	%rax, 16(%rsp)
	cmpq	%rax, %rcx
	jb	.L7
	testq	%rax, %rax
	je	.L81
.L8:
	movq	16(%rsp), %rax
	leaq	0(,%rax,4), %r13
	movq	%r13, %rdi
	movq	%r13, 56(%rsp)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	cmpq	$1, 16(%rsp)
	movl	$0, (%rax)
	movq	%rax, %rcx
	je	.L82
	leaq	4(%rax), %rdi
	leaq	(%rax,%r13), %rax
	cmpq	%rax, %rdi
	je	.L17
	leaq	-4(%r13), %rdx
	xorl	%esi, %esi
	movq	%rcx, 96(%rsp)
	call	memset@PLT
	movq	96(%rsp), %rcx
.L17:
	testl	%r12d, %r12d
	je	.L76
.L11:
	movq	88(%rsp), %rax
	movq	32(%rsp), %rsi
	movq	(%rax), %r8
	xorl	%eax, %eax
	addq	%r8, %rsi
	.p2align 4,,10
	.p2align 3
.L18:
	movl	(%rsi,%rax), %edx
	movl	%edx, 0(%rbp,%rax)
	addq	$4, %rax
	cmpq	%r14, %rax
	jne	.L18
	movq	16(%rsp), %rax
	xorl	%esi, %esi
	xorl	%edx, %edx
	leaq	0(,%rax,4), %r13
	testl	%ebx, %ebx
	jle	.L37
.L16:
	movq	40(%rsp), %rsi
	xorl	%eax, %eax
	addq	%r8, %rsi
	.p2align 4,,10
	.p2align 3
.L20:
	movl	(%rsi,%rax), %edx
	movl	%edx, (%rcx,%rax)
	addq	$4, %rax
	cmpq	%r13, %rax
	jne	.L20
	testl	%r12d, %r12d
	je	.L47
	movl	52(%rsp), %edi
	xorl	%edx, %edx
	xorl	%esi, %esi
	addl	$1, %edi
	movslq	%edi, %rdi
	jmp	.L24
	.p2align 4,,10
	.p2align 3
.L83:
	movl	%r9d, %eax
	addl	$1, %esi
	movl	%eax, -4(%r8,%rdi,4)
	leaq	1(%rdi), %rax
	cmpl	%ebx, %edx
	jge	.L50
.L84:
	cmpl	%esi, %r12d
	jle	.L50
	movq	%rax, %rdi
.L24:
	movslq	%esi, %rax
	movl	0(%rbp,%rax,4), %r9d
	movslq	%edx, %rax
	movl	(%rcx,%rax,4), %eax
	cmpl	%r9d, %eax
	jge	.L83
	addl	$1, %edx
	movl	%eax, -4(%r8,%rdi,4)
	leaq	1(%rdi), %rax
	cmpl	%ebx, %edx
	jl	.L84
.L50:
	movl	%edi, 4(%rsp)
	cmpl	%esi, %r12d
	jle	.L26
.L37:
	movslq	%esi, %rax
	movl	84(%rsp), %r11d
	leaq	0(%rbp,%rax,4), %r10
	movslq	4(%rsp), %rax
	subl	%esi, %r11d
	leaq	(%r8,%rax,4), %r9
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L27:
	movl	(%r10,%rax,4), %edi
	movl	%edi, (%r9,%rax,4)
	movq	%rax, %rdi
	addq	$1, %rax
	cmpq	%r11, %rdi
	jne	.L27
	movl	4(%rsp), %eax
	addl	%r12d, %eax
	subl	%esi, %eax
	movl	%eax, 4(%rsp)
.L26:
	cmpl	%edx, %ebx
	jle	.L30
.L21:
	movslq	4(%rsp), %rax
	subl	%edx, %ebx
	movslq	%edx, %rdx
	salq	$2, %rbx
	leaq	(%rcx,%rdx,4), %rdi
	leaq	(%r8,%rax,4), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L29:
	movl	(%rdi,%rax), %edx
	movl	%edx, (%rsi,%rax)
	addq	$4, %rax
	cmpq	%rax, %rbx
	jne	.L29
.L30:
	testq	%rcx, %rcx
	je	.L9
	movq	56(%rsp), %rsi
	movq	%rcx, %rdi
	call	_ZdlPvm@PLT
.L9:
	testq	%rbp, %rbp
	je	.L32
	movq	24(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L32:
	movl	80(%rsp), %eax
	movq	72(%rsp), %rcx
	movl	68(%rsp), %ebx
	addq	%rcx, 40(%rsp)
	addq	%rcx, 32(%rsp)
	subl	%ebx, 48(%rsp)
	cmpl	%eax, %r15d
	jl	.L33
	movl	68(%rsp), %r12d
	movl	64(%rsp), %eax
	cmpl	%eax, %r12d
	jl	.L2
.L1:
	addq	$120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	.cfi_restore_state
	movabsq	$2305843009213693951, %rcx
	movslq	%ebx, %rax
	xorl	%ebp, %ebp
	movq	%rax, 16(%rsp)
	cmpq	%rax, %rcx
	jb	.L7
	testq	%rax, %rax
	jne	.L8
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L80:
	movabsq	$2305843009213693951, %rcx
	movslq	%ebx, %rax
	movq	$4, 24(%rsp)
	movq	%rax, 16(%rsp)
	cmpq	%rax, %rcx
	jb	.L7
	testq	%rax, %rax
	jne	.L8
	movq	$0, 56(%rsp)
	xorl	%ecx, %ecx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L82:
	movq	$4, 56(%rsp)
	testl	%r12d, %r12d
	jne	.L11
.L76:
	movq	88(%rsp), %rax
	movq	(%rax), %r8
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L81:
	movq	%r13, 24(%rsp)
	xorl	%ecx, %ecx
	movq	$0, 16(%rsp)
	movq	$0, 56(%rsp)
	jmp	.L11
.L47:
	xorl	%edx, %edx
	jmp	.L21
.L78:
	leaq	.LC0(%rip), %rdi
.LEHB2:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE2:
.L7:
	leaq	.LC0(%rip), %rdi
.LEHB3:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE3:
.L49:
	endbr64
	movq	%rax, %rbx
	jmp	.L35
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2421:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2421-.LLSDACSB2421
.LLSDACSB2421:
	.uleb128 .LEHB0-.LFB2421
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2421
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L49-.LFB2421
	.uleb128 0
	.uleb128 .LEHB2-.LFB2421
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2421
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L49-.LFB2421
	.uleb128 0
.LLSDACSE2421:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2421
	.type	_Z18mergeSortIterativeRSt6vectorIiSaIiEE.cold, @function
_Z18mergeSortIterativeRSt6vectorIiSaIiEE.cold:
.LFSB2421:
.L35:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	testq	%rbp, %rbp
	je	.L36
	movq	24(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L36:
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
	.cfi_endproc
.LFE2421:
	.section	.gcc_except_table
.LLSDAC2421:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2421-.LLSDACSBC2421
.LLSDACSBC2421:
	.uleb128 .LEHB4-.LCOLDB1
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSEC2421:
	.section	.text.unlikely
	.text
	.size	_Z18mergeSortIterativeRSt6vectorIiSaIiEE, .-_Z18mergeSortIterativeRSt6vectorIiSaIiEE
	.section	.text.unlikely
	.size	_Z18mergeSortIterativeRSt6vectorIiSaIiEE.cold, .-_Z18mergeSortIterativeRSt6vectorIiSaIiEE.cold
.LCOLDE1:
	.text
.LHOTE1:
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
