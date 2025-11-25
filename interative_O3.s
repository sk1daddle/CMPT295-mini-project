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
	movq	%rdi, 80(%rsp)
	movq	%rax, 104(%rsp)
	movl	%eax, 56(%rsp)
	cmpl	$1, %eax
	jle	.L1
.L2:
	movl	56(%rsp), %eax
	movl	$0, 8(%rsp)
	movq	$0, 16(%rsp)
	subl	%r12d, %eax
	movl	%eax, 68(%rsp)
	leal	(%r12,%r12), %eax
	movl	%eax, 64(%rsp)
	cltq
	salq	$2, %rax
	movq	%rax, 72(%rsp)
	movslq	%r12d, %rax
	movq	%rax, (%rsp)
	salq	$2, %rax
	movq	%rax, 24(%rsp)
	movl	104(%rsp), %eax
	subl	%r12d, %eax
	movl	%eax, 36(%rsp)
	leal	-1(%r12), %eax
	movl	%eax, 32(%rsp)
	cltq
	leaq	4(,%rax,4), %rax
	movq	%rax, 88(%rsp)
	movl	8(%rsp), %eax
.L57:
	movl	%eax, %ebx
	addl	%r12d, %eax
	movl	36(%rsp), %r13d
	movabsq	$2305843009213693951, %rcx
	movl	%eax, 60(%rsp)
	addl	%r12d, %eax
	cmpl	%eax, 56(%rsp)
	movl	%eax, 12(%rsp)
	movq	(%rsp), %rax
	cmovge	%r12d, %r13d
	movq	%rax, 40(%rsp)
	cmpq	%rax, %rcx
	jb	.L123
	cmpq	$0, (%rsp)
	je	.L124
	leaq	0(,%rax,4), %r14
	movq	%rax, %r15
	movq	%r14, %rdi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$0, (%rax)
	movq	%rax, %rbp
	cmpq	$1, %r15
	je	.L125
	leaq	4(%rax), %rdi
	leaq	(%rax,%r14), %rax
	cmpq	%rax, %rdi
	je	.L117
	leaq	-4(%r14), %rdx
	xorl	%esi, %esi
	call	memset@PLT
.L117:
	movslq	%r13d, %r15
	movq	%r14, 40(%rsp)
	movabsq	$2305843009213693951, %rax
	cmpq	%r15, %rax
	jb	.L7
	testq	%r15, %r15
	je	.L126
.L8:
	leaq	0(,%r15,4), %r14
	movq	%r14, %rdi
	movq	%r14, 48(%rsp)
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movl	$0, (%rax)
	movq	%rax, %rcx
	cmpq	$1, %r15
	je	.L127
	leaq	4(%rax), %rdi
	leaq	(%rax,%r14), %rax
	cmpq	%rax, %rdi
	je	.L17
	leaq	-4(%r14), %rdx
	xorl	%esi, %esi
	movq	%rcx, 96(%rsp)
	call	memset@PLT
	movq	96(%rsp), %rcx
.L17:
	testl	%r12d, %r12d
	je	.L128
.L11:
	movq	80(%rsp), %rax
	cmpl	$2, 32(%rsp)
	movq	(%rax), %rsi
	jbe	.L19
	movq	16(%rsp), %rdi
	movq	%rbp, %rax
	leaq	4(%rsi,%rdi), %rdx
	subq	%rdx, %rax
	cmpq	$8, %rax
	ja	.L129
.L19:
	movq	16(%rsp), %rdi
	movq	88(%rsp), %r8
	xorl	%eax, %eax
	addq	%rsi, %rdi
	.p2align 4,,10
	.p2align 3
.L24:
	movl	(%rdi,%rax), %edx
	movl	%edx, 0(%rbp,%rax)
	addq	$4, %rax
	cmpq	%rax, %r8
	jne	.L24
.L25:
	xorl	%edx, %edx
	xorl	%eax, %eax
	testl	%r13d, %r13d
	jle	.L22
.L18:
	leal	-1(%r13), %eax
	leaq	0(,%r15,4), %r14
	cmpl	$2, %eax
	jbe	.L26
	movq	24(%rsp), %rdi
	movq	%rcx, %rax
	leaq	0(,%r15,4), %r14
	leaq	4(%rsi,%rdi), %rdx
	subq	%rdx, %rax
	cmpq	$8, %rax
	ja	.L130
.L26:
	movq	24(%rsp), %rdi
	xorl	%eax, %eax
	addq	%rsi, %rdi
	.p2align 4,,10
	.p2align 3
.L29:
	movl	(%rdi,%rax), %edx
	movl	%edx, (%rcx,%rax)
	addq	$4, %rax
	cmpq	%rax, %r14
	jne	.L29
.L28:
	testl	%r12d, %r12d
	je	.L67
.L135:
	movl	8(%rsp), %ebx
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%r10d, %r10d
	xorl	%r9d, %r9d
	addl	$1, %ebx
	movslq	%ebx, %rbx
	.p2align 4,,10
	.p2align 3
.L36:
	movl	0(%rbp,%r10,4), %r8d
	movl	(%rcx,%r9,4), %edi
	cmpl	%r8d, %edi
	jl	.L32
.L131:
	movl	%r8d, -4(%rsi,%rbx,4)
	addl	$1, %edx
	leaq	1(%rbx), %rdi
	cmpl	%eax, %r13d
	jle	.L35
	cmpl	%edx, %r12d
	jle	.L35
	movslq	%edx, %r10
	movq	%rdi, %rbx
	movl	(%rcx,%r9,4), %edi
	movl	0(%rbp,%r10,4), %r8d
	cmpl	%r8d, %edi
	jge	.L131
.L32:
	movl	%edi, -4(%rsi,%rbx,4)
	addl	$1, %eax
	leaq	1(%rbx), %rdi
	cmpl	%edx, %r12d
	jle	.L35
	cmpl	%eax, %r13d
	jle	.L35
	movq	%rdi, %rbx
	movslq	%eax, %r9
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L35:
	cmpl	%edx, %r12d
	jle	.L37
.L22:
	movl	32(%rsp), %r10d
	movslq	%ebx, %r8
	subl	%edx, %r10d
	cmpl	$2, %r10d
	jbe	.L38
	leal	1(%rdx), %edi
	leaq	(%rsi,%r8,4), %r9
	movslq	%edi, %rdi
	movq	%r9, %r11
	salq	$2, %rdi
	leaq	0(%rbp,%rdi), %r14
	subq	%r14, %r11
	cmpq	$8, %r11
	ja	.L132
.L38:
	movslq	%edx, %rdx
	movl	%r10d, %edi
	leaq	(%rsi,%r8,4), %r11
	leaq	0(%rbp,%rdx,4), %r9
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L41:
	movl	(%r9,%rdx,4), %r8d
	movl	%r8d, (%r11,%rdx,4)
	movq	%rdx, %r8
	addq	$1, %rdx
	cmpq	%r8, %rdi
	jne	.L41
.L42:
	leal	1(%rbx,%r10), %ebx
.L37:
	cmpl	%r13d, %eax
	jge	.L47
.L31:
	movl	%r13d, %edi
	movslq	%ebx, %r8
	subl	%eax, %edi
	leal	-1(%rdi), %edx
	cmpl	$2, %edx
	jbe	.L44
	leal	1(%rax), %edx
	leaq	(%rsi,%r8,4), %r9
	movslq	%edx, %rdx
	movq	%r9, %r10
	salq	$2, %rdx
	leaq	(%rcx,%rdx), %r11
	subq	%r11, %r10
	cmpq	$8, %r10
	ja	.L133
.L44:
	movl	%edi, %edx
	cltq
	leaq	(%rsi,%r8,4), %rdi
	leaq	(%rcx,%rax,4), %r9
	salq	$2, %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L49:
	movl	(%r9,%rax), %esi
	movl	%esi, (%rdi,%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L49
.L47:
	testq	%rcx, %rcx
	je	.L9
	movq	48(%rsp), %rsi
	movq	%rcx, %rdi
	call	_ZdlPvm@PLT
.L9:
	testq	%rbp, %rbp
	je	.L52
	movq	40(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
	movq	72(%rsp), %rsi
	addq	%rsi, 24(%rsp)
	addq	%rsi, 16(%rsp)
.L121:
	movl	64(%rsp), %esi
	movl	12(%rsp), %ecx
	subl	%esi, 36(%rsp)
	cmpl	%ecx, 68(%rsp)
	jle	.L134
	movl	12(%rsp), %eax
	movl	%eax, 8(%rsp)
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L124:
	movabsq	$2305843009213693951, %rax
	movslq	%r13d, %r15
	xorl	%ebp, %ebp
	cmpq	%r15, %rax
	jb	.L7
	testq	%r15, %r15
	jne	.L8
.L52:
	movq	72(%rsp), %rcx
	addq	%rcx, 24(%rsp)
	addq	%rcx, 16(%rsp)
	jmp	.L121
	.p2align 4,,10
	.p2align 3
.L129:
	movl	%r12d, %edx
	addq	%rsi, %rdi
	xorl	%eax, %eax
	shrl	$2, %edx
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L20:
	movdqu	(%rdi,%rax), %xmm0
	movups	%xmm0, 0(%rbp,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L20
	movl	%r12d, %eax
	andl	$-4, %eax
	testb	$3, %r12b
	je	.L25
	movl	8(%rsp), %r11d
	movl	32(%rsp), %r14d
	leal	(%r11,%rax), %edx
	movslq	%edx, %rdx
	movl	(%rsi,%rdx,4), %r8d
	movl	%eax, %edx
	leaq	0(,%rdx,4), %rdi
	movl	%r8d, 0(%rbp,%rdx,4)
	leal	1(%rax), %r8d
	cmpl	%eax, %r14d
	jle	.L25
	leal	(%r8,%r11), %edx
	addl	$2, %eax
	movslq	%edx, %rdx
	movl	(%rsi,%rdx,4), %edx
	movl	%edx, 4(%rbp,%rdi)
	cmpl	%r14d, %r8d
	jge	.L25
	addl	%r11d, %eax
	cltq
	movl	(%rsi,%rax,4), %eax
	movl	%eax, 8(%rbp,%rdi)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L130:
	movl	%r13d, %edx
	addq	%rsi, %rdi
	xorl	%eax, %eax
	shrl	$2, %edx
	salq	$4, %rdx
	.p2align 4,,10
	.p2align 3
.L27:
	movdqu	(%rdi,%rax), %xmm1
	movups	%xmm1, (%rcx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L27
	movl	%r13d, %eax
	andl	$-4, %eax
	testb	$3, %r13b
	je	.L28
	movl	60(%rsp), %r15d
	leal	(%r15,%rax), %edx
	movslq	%edx, %rdx
	movl	(%rsi,%rdx,4), %r8d
	movl	%eax, %edx
	leaq	0(,%rdx,4), %rdi
	movl	%r8d, (%rcx,%rdx,4)
	leal	1(%rax), %edx
	cmpl	%edx, %r13d
	jle	.L28
	addl	%r15d, %edx
	addl	$2, %eax
	movslq	%edx, %rdx
	movl	(%rsi,%rdx,4), %edx
	movl	%edx, 4(%rcx,%rdi)
	cmpl	%r13d, %eax
	jge	.L28
	addl	%eax, %r15d
	movslq	%r15d, %rax
	movl	(%rsi,%rax,4), %eax
	movl	%eax, 8(%rcx,%rdi)
	testl	%r12d, %r12d
	jne	.L135
.L67:
	xorl	%eax, %eax
	jmp	.L31
	.p2align 4,,10
	.p2align 3
.L133:
	movl	%edi, %r8d
	leaq	-4(%rcx,%rdx), %r10
	xorl	%edx, %edx
	shrl	$2, %r8d
	salq	$4, %r8
	.p2align 4,,10
	.p2align 3
.L45:
	movdqu	(%r10,%rdx), %xmm3
	movups	%xmm3, (%r9,%rdx)
	addq	$16, %rdx
	cmpq	%rdx, %r8
	jne	.L45
	movl	%edi, %edx
	andl	$-4, %edx
	addl	%edx, %eax
	addl	%ebx, %edx
	andl	$3, %edi
	je	.L47
	movslq	%eax, %r8
	leal	1(%rax), %edi
	movl	(%rcx,%r8,4), %r9d
	leal	1(%rdx), %r8d
	movslq	%edx, %rdx
	movl	%r9d, (%rsi,%rdx,4)
	cmpl	%r13d, %edi
	jge	.L47
	movslq	%edi, %rdi
	movslq	%r8d, %rdx
	addl	$2, %eax
	leaq	0(,%rdi,4), %r9
	movl	(%rcx,%rdi,4), %edi
	leaq	0(,%rdx,4), %r8
	movl	%edi, (%rsi,%rdx,4)
	cmpl	%r13d, %eax
	jge	.L47
	movl	4(%rcx,%r9), %eax
	movl	%eax, 4(%rsi,%r8)
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L132:
	leal	1(%r10), %r11d
	leaq	-4(%rbp,%rdi), %r14
	xorl	%edi, %edi
	movl	%r11d, %r8d
	shrl	$2, %r8d
	salq	$4, %r8
	.p2align 4,,10
	.p2align 3
.L39:
	movdqu	(%r14,%rdi), %xmm2
	movups	%xmm2, (%r9,%rdi)
	addq	$16, %rdi
	cmpq	%rdi, %r8
	jne	.L39
	movl	%r11d, %edi
	andl	$-4, %edi
	addl	%edi, %edx
	addl	%ebx, %edi
	andl	$3, %r11d
	je	.L42
	movslq	%edx, %r8
	movl	32(%rsp), %r15d
	leal	1(%rdx), %r9d
	movl	0(%rbp,%r8,4), %r11d
	leal	1(%rdi), %r8d
	movslq	%edi, %rdi
	movl	%r11d, (%rsi,%rdi,4)
	cmpl	%edx, %r15d
	jle	.L42
	movslq	%r9d, %rdx
	movslq	%r8d, %r8
	leaq	0(,%rdx,4), %rdi
	movl	0(%rbp,%rdx,4), %edx
	leaq	0(,%r8,4), %r11
	movl	%edx, (%rsi,%r8,4)
	cmpl	%r9d, %r15d
	jle	.L42
	movl	4(%rbp,%rdi), %edx
	movl	%edx, 4(%rsi,%r11)
	jmp	.L42
	.p2align 4,,10
	.p2align 3
.L125:
	movabsq	$2305843009213693951, %rax
	movslq	%r13d, %r15
	movq	$4, 40(%rsp)
	cmpq	%r15, %rax
	jb	.L7
	testq	%r15, %r15
	jne	.L8
	movq	$0, 48(%rsp)
	xorl	%ecx, %ecx
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L127:
	movq	$4, 48(%rsp)
	testl	%r12d, %r12d
	jne	.L11
	movq	80(%rsp), %rax
	movq	(%rax), %rsi
	jmp	.L26
	.p2align 4,,10
	.p2align 3
.L126:
	movq	%r14, 40(%rsp)
	xorl	%r15d, %r15d
	xorl	%ecx, %ecx
	movq	$0, 48(%rsp)
	jmp	.L11
	.p2align 4,,10
	.p2align 3
.L134:
	movl	56(%rsp), %eax
	movl	%esi, %r12d
	cmpl	%eax, %esi
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
.L128:
	.cfi_restore_state
	movq	80(%rsp), %rax
	movq	(%rax), %rsi
	jmp	.L18
.L123:
	leaq	.LC0(%rip), %rdi
.LEHB2:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE2:
.L7:
	leaq	.LC0(%rip), %rdi
.LEHB3:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE3:
.L69:
	endbr64
	movq	%rax, %rbx
	jmp	.L55
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
	.uleb128 .L69-.LFB2421
	.uleb128 0
	.uleb128 .LEHB2-.LFB2421
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB2421
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L69-.LFB2421
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
.L55:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	testq	%rbp, %rbp
	je	.L56
	movq	40(%rsp), %rsi
	movq	%rbp, %rdi
	call	_ZdlPvm@PLT
.L56:
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
