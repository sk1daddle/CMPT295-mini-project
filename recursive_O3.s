	.file	"recursiveMerge.cpp"
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
	.globl	_Z5mergeRSt6vectorIiSaIiEEiii
	.type	_Z5mergeRSt6vectorIiSaIiEEiii, @function
_Z5mergeRSt6vectorIiSaIiEEiii:
.LFB2420:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2420
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movl	%edx, %r15d
	subl	%edx, %ecx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	subl	%esi, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movabsq	$2305843009213693951, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leal	1(%r15), %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movslq	%r12d, %rax
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 24(%rsp)
	movl	%edx, 20(%rsp)
	movq	%rax, (%rsp)
	cmpq	%rax, %r13
	jb	.L110
	cmpq	$0, (%rsp)
	movl	%esi, %r14d
	movl	%ecx, %ebp
	je	.L111
	leaq	0(,%rax,4), %rcx
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	cmpq	$1, (%rsp)
	movq	8(%rsp), %rcx
	movl	$0, (%rax)
	movq	%rax, %rbx
	je	.L112
	leaq	4(%rax), %rdi
	leaq	(%rax,%rcx), %rax
	cmpq	%rax, %rdi
	je	.L113
	leaq	-4(%rcx), %rdx
	xorl	%esi, %esi
	movq	%rcx, (%rsp)
	call	memset@PLT
	movslq	%ebp, %rax
	movq	(%rsp), %rcx
	cmpq	%rax, %r13
	movq	%rax, 8(%rsp)
	jb	.L10
	testq	%rax, %rax
	je	.L11
.L5:
	movq	8(%rsp), %rax
	leaq	0(,%rax,4), %r13
	movq	%r13, %rdi
	movq	%r13, 32(%rsp)
.LEHB1:
	call	_Znwm@PLT
	cmpq	$1, 8(%rsp)
	movl	$0, (%rax)
	movq	%rax, %rcx
	je	.L114
	leaq	4(%rax), %rdi
	leaq	(%rax,%r13), %rax
	cmpq	%rax, %rdi
	je	.L14
	leaq	-4(%r13), %rdx
	xorl	%esi, %esi
	movq	%rcx, 40(%rsp)
	call	memset@PLT
	movq	40(%rsp), %rcx
.L14:
	testl	%r12d, %r12d
	je	.L115
.L8:
	movq	24(%rsp), %rax
	movslq	%r14d, %rdi
	movq	(%rax), %rdx
	cmpl	$2, %r15d
	jbe	.L16
	leaq	4(,%rdi,4), %rax
	movq	%rbx, %rsi
	leaq	(%rdx,%rax), %r8
	subq	%r8, %rsi
	cmpq	$8, %rsi
	ja	.L116
.L16:
	movslq	%r15d, %rax
	leaq	(%rdx,%rdi,4), %r8
	leaq	4(,%rax,4), %r9
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L21:
	movl	(%r8,%rax), %esi
	movl	%esi, (%rbx,%rax)
	addq	$4, %rax
	cmpq	%r9, %rax
	jne	.L21
.L22:
	xorl	%eax, %eax
	xorl	%esi, %esi
	testl	%ebp, %ebp
	je	.L19
.L15:
	leal	-1(%rbp), %eax
	cmpl	$2, %eax
	jbe	.L117
	movslq	20(%rsp), %rax
	movq	8(%rsp), %r11
	movq	%rcx, %rdi
	leaq	8(,%rax,4), %rsi
	leaq	0(,%r11,4), %r13
	leaq	(%rdx,%rsi), %r8
	subq	%r8, %rdi
	cmpq	$8, %rdi
	ja	.L118
.L23:
	leaq	(%rdx,%rax,4), %rdi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L26:
	movl	4(%rdi,%rax), %esi
	movl	%esi, (%rcx,%rax)
	addq	$4, %rax
	cmpq	%rax, %r13
	jne	.L26
.L25:
	testl	%r12d, %r12d
	je	.L59
	leal	1(%r14), %edi
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	xorl	%r11d, %r11d
	movslq	%edi, %rdi
	xorl	%r10d, %r10d
	.p2align 4,,10
	.p2align 3
.L33:
	movl	(%rbx,%r11,4), %r9d
	movl	(%rcx,%r10,4), %esi
	cmpl	%r9d, %esi
	jl	.L29
.L119:
	movl	%r9d, -4(%rdx,%rdi,4)
	leal	1(%r8), %esi
	leaq	1(%rdi), %r9
	cmpl	%eax, %ebp
	jle	.L32
	cmpl	%r8d, %r15d
	jle	.L32
	movslq	%esi, %r11
	movq	%r9, %rdi
	movl	(%rcx,%r10,4), %esi
	movl	(%rbx,%r11,4), %r9d
	movq	%r11, %r8
	cmpl	%r9d, %esi
	jge	.L119
.L29:
	movl	%esi, -4(%rdx,%rdi,4)
	addl	$1, %eax
	leaq	1(%rdi), %rsi
	cmpl	%r8d, %r12d
	jle	.L61
	cmpl	%eax, %ebp
	jle	.L61
	movq	%rsi, %rdi
	movslq	%eax, %r10
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L61:
	movl	%r8d, %esi
.L32:
	movl	%edi, %r14d
	cmpl	%esi, %r12d
	jle	.L34
	movslq	%edi, %rdi
.L19:
	movl	%r15d, %r10d
	subl	%esi, %r10d
	cmpl	$2, %r10d
	jbe	.L35
	leal	1(%rsi), %r8d
	leaq	(%rdx,%rdi,4), %r9
	movslq	%r8d, %r8
	movq	%r9, %r11
	salq	$2, %r8
	leaq	(%rbx,%r8), %r12
	subq	%r12, %r11
	cmpq	$8, %r11
	ja	.L120
.L35:
	movslq	%esi, %rsi
	movl	%r10d, %r8d
	leaq	(%rdx,%rdi,4), %r11
	leaq	(%rbx,%rsi,4), %r9
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L38:
	movl	(%r9,%rsi,4), %edi
	movl	%edi, (%r11,%rsi,4)
	movq	%rsi, %rdi
	addq	$1, %rsi
	cmpq	%r8, %rdi
	jne	.L38
.L39:
	leal	1(%r10,%r14), %r14d
.L34:
	cmpl	%ebp, %eax
	jge	.L44
.L28:
	movl	%ebp, %r8d
	movslq	%r14d, %rdi
	subl	%eax, %r8d
	leal	-1(%r8), %esi
	cmpl	$2, %esi
	jbe	.L41
	leal	1(%rax), %esi
	leaq	(%rdx,%rdi,4), %r9
	movslq	%esi, %rsi
	movq	%r9, %r10
	salq	$2, %rsi
	leaq	(%rcx,%rsi), %r11
	subq	%r11, %r10
	cmpq	$8, %r10
	ja	.L121
.L41:
	movl	%r8d, %esi
	cltq
	leaq	(%rdx,%rdi,4), %rdi
	leaq	(%rcx,%rax,4), %r8
	salq	$2, %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L46:
	movl	(%r8,%rax), %edx
	movl	%edx, (%rdi,%rax)
	addq	$4, %rax
	cmpq	%rsi, %rax
	jne	.L46
.L44:
	testq	%rcx, %rcx
	je	.L6
	movq	32(%rsp), %rsi
	movq	%rcx, %rdi
	call	_ZdlPvm@PLT
.L6:
	testq	%rbx, %rbx
	je	.L1
	movq	(%rsp), %rsi
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi
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
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L111:
	.cfi_restore_state
	movslq	%ecx, %rax
	xorl	%ebx, %ebx
	movq	%rax, 8(%rsp)
	cmpq	%rax, %r13
	jb	.L4
	testq	%rax, %rax
	jne	.L5
.L1:
	addq	$56, %rsp
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
.L118:
	.cfi_restore_state
	leaq	-4(%rdx,%rsi), %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	shrl	$2, %esi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L24:
	movdqu	(%rdi,%rax), %xmm1
	movups	%xmm1, (%rcx,%rax)
	addq	$16, %rax
	cmpq	%rax, %rsi
	jne	.L24
	movl	%ebp, %eax
	andl	$-4, %eax
	testb	$3, %bpl
	je	.L25
	movl	20(%rsp), %r8d
	addl	$1, %r8d
	leal	(%r8,%rax), %esi
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %r9d
	movl	%eax, %esi
	leaq	0(,%rsi,4), %rdi
	movl	%r9d, (%rcx,%rsi,4)
	leal	1(%rax), %esi
	cmpl	%esi, %ebp
	jle	.L25
	addl	%r8d, %esi
	addl	$2, %eax
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %esi
	movl	%esi, 4(%rcx,%rdi)
	cmpl	%ebp, %eax
	jge	.L25
	addl	%r8d, %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, 8(%rcx,%rdi)
	jmp	.L25
	.p2align 4,,10
	.p2align 3
.L120:
	leal	1(%r10), %r11d
	leaq	-4(%rbx,%r8), %r12
	xorl	%edi, %edi
	movl	%r11d, %r8d
	shrl	$2, %r8d
	salq	$4, %r8
	.p2align 4,,10
	.p2align 3
.L36:
	movdqu	(%r12,%rdi), %xmm2
	movups	%xmm2, (%r9,%rdi)
	addq	$16, %rdi
	cmpq	%r8, %rdi
	jne	.L36
	movl	%r11d, %edi
	andl	$-4, %edi
	addl	%edi, %esi
	addl	%r14d, %edi
	andl	$3, %r11d
	je	.L39
	movslq	%esi, %r8
	leal	1(%rsi), %r9d
	movl	(%rbx,%r8,4), %r11d
	leal	1(%rdi), %r8d
	movslq	%edi, %rdi
	movl	%r11d, (%rdx,%rdi,4)
	cmpl	%esi, %r15d
	jle	.L39
	movslq	%r9d, %rsi
	movslq	%r8d, %r8
	leaq	0(,%rsi,4), %rdi
	movl	(%rbx,%rsi,4), %esi
	leaq	0(,%r8,4), %r11
	movl	%esi, (%rdx,%r8,4)
	cmpl	%r9d, %r15d
	jle	.L39
	movl	4(%rbx,%rdi), %esi
	movl	%esi, 4(%rdx,%r11)
	jmp	.L39
	.p2align 4,,10
	.p2align 3
.L116:
	movl	%r12d, %esi
	leaq	-4(%rdx,%rax), %r8
	xorl	%eax, %eax
	shrl	$2, %esi
	salq	$4, %rsi
	.p2align 4,,10
	.p2align 3
.L17:
	movdqu	(%r8,%rax), %xmm0
	movups	%xmm0, (%rbx,%rax)
	addq	$16, %rax
	cmpq	%rsi, %rax
	jne	.L17
	movl	%r12d, %eax
	andl	$-4, %eax
	testb	$3, %r12b
	je	.L22
	leal	(%r14,%rax), %esi
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %r9d
	movl	%eax, %esi
	leaq	0(,%rsi,4), %r8
	movl	%r9d, (%rbx,%rsi,4)
	leal	1(%rax), %r9d
	cmpl	%eax, %r15d
	jle	.L22
	leal	(%r14,%r9), %esi
	addl	$2, %eax
	movslq	%esi, %rsi
	movl	(%rdx,%rsi,4), %esi
	movl	%esi, 4(%rbx,%r8)
	cmpl	%r9d, %r15d
	jle	.L22
	addl	%r14d, %eax
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, 8(%rbx,%r8)
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L121:
	movl	%r8d, %edi
	leaq	-4(%rcx,%rsi), %r10
	xorl	%esi, %esi
	shrl	$2, %edi
	salq	$4, %rdi
	.p2align 4,,10
	.p2align 3
.L42:
	movdqu	(%r10,%rsi), %xmm3
	movups	%xmm3, (%r9,%rsi)
	addq	$16, %rsi
	cmpq	%rsi, %rdi
	jne	.L42
	movl	%r8d, %esi
	andl	$-4, %esi
	addl	%esi, %eax
	addl	%r14d, %esi
	andl	$3, %r8d
	je	.L44
	movslq	%eax, %r8
	leal	1(%rax), %edi
	movl	(%rcx,%r8,4), %r9d
	leal	1(%rsi), %r8d
	movslq	%esi, %rsi
	movl	%r9d, (%rdx,%rsi,4)
	cmpl	%edi, %ebp
	jle	.L44
	movslq	%edi, %rdi
	movslq	%r8d, %rsi
	addl	$2, %eax
	leaq	0(,%rdi,4), %r9
	movl	(%rcx,%rdi,4), %edi
	leaq	0(,%rsi,4), %r8
	movl	%edi, (%rdx,%rsi,4)
	cmpl	%ebp, %eax
	jge	.L44
	movl	4(%rcx,%r9), %eax
	movl	%eax, 4(%rdx,%r8)
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L117:
	movq	8(%rsp), %rax
	leaq	0(,%rax,4), %r13
	movslq	20(%rsp), %rax
	jmp	.L23
	.p2align 4,,10
	.p2align 3
.L112:
	movslq	%ebp, %rax
	movq	$4, (%rsp)
	movq	%rax, 8(%rsp)
	cmpq	%rax, %r13
	jb	.L4
	testq	%rax, %rax
	jne	.L5
.L107:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	jmp	.L8
.L113:
	movslq	%ebp, %rax
	movq	%rax, 8(%rsp)
	cmpq	%rax, %r13
	jb	.L10
	movq	%rcx, (%rsp)
	testq	%rax, %rax
	jne	.L5
	.p2align 4,,10
	.p2align 3
.L11:
	movq	%rcx, (%rsp)
	movq	$0, 8(%rsp)
	jmp	.L107
	.p2align 4,,10
	.p2align 3
.L114:
	movq	$4, 32(%rsp)
	testl	%r12d, %r12d
	jne	.L8
	movq	24(%rsp), %rax
	movq	(%rax), %rdx
	movslq	20(%rsp), %rax
	jmp	.L23
.L115:
	movq	24(%rsp), %rax
	movq	(%rax), %rdx
	jmp	.L15
.L59:
	xorl	%eax, %eax
	jmp	.L28
.L10:
	movq	%rcx, (%rsp)
.L4:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE1:
.L110:
	leaq	.LC0(%rip), %rdi
.LEHB2:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE2:
.L62:
	endbr64
	movq	%rax, %rbp
	jmp	.L50
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2420:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2420-.LLSDACSB2420
.LLSDACSB2420:
	.uleb128 .LEHB0-.LFB2420
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2420
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L62-.LFB2420
	.uleb128 0
	.uleb128 .LEHB2-.LFB2420
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2420:
	.text
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC2420
	.type	_Z5mergeRSt6vectorIiSaIiEEiii.cold, @function
_Z5mergeRSt6vectorIiSaIiEEiii.cold:
.LFSB2420:
.L50:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	testq	%rbx, %rbx
	je	.L51
	movq	(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZdlPvm@PLT
.L51:
	movq	%rbp, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
	.cfi_endproc
.LFE2420:
	.section	.gcc_except_table
.LLSDAC2420:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2420-.LLSDACSBC2420
.LLSDACSBC2420:
	.uleb128 .LEHB3-.LCOLDB1
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSEC2420:
	.section	.text.unlikely
	.text
	.size	_Z5mergeRSt6vectorIiSaIiEEiii, .-_Z5mergeRSt6vectorIiSaIiEEiii
	.section	.text.unlikely
	.size	_Z5mergeRSt6vectorIiSaIiEEiii.cold, .-_Z5mergeRSt6vectorIiSaIiEEiii.cold
.LCOLDE1:
	.text
.LHOTE1:
	.p2align 4
	.globl	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	.type	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii, @function
_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii:
.LFB2421:
	.cfi_startproc
	endbr64
	cmpl	%edx, %esi
	jl	.L141
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	movl	%edx, %eax
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subl	%esi, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	%eax, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	sarl	%r13d
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	addl	%esi, %r13d
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %ebx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpl	%r13d, %esi
	jge	.L124
	movl	%eax, %r14d
	sarl	$2, %r14d
	addl	%esi, %r14d
	cmpl	%r14d, %esi
	jl	.L142
	leal	1(%r14), %eax
	cmpl	%eax, %r13d
	jg	.L143
.L128:
	movl	%r13d, %ecx
	movl	%r14d, %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
.L124:
	leal	1(%r13), %eax
	cmpl	%ebp, %eax
	jge	.L131
	movl	%ebp, %r15d
	subl	%eax, %r15d
	movl	%r15d, %r14d
	sarl	%r14d
	addl	%eax, %r14d
	cmpl	%r14d, %eax
	jl	.L144
	leal	1(%r14), %r8d
	cmpl	%r8d, %ebp
	jg	.L145
.L135:
	movl	%ebp, %ecx
	movl	%r14d, %edx
	movl	%eax, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
.L131:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	jmp	_Z5mergeRSt6vectorIiSaIiEEiii
	.p2align 4,,10
	.p2align 3
.L145:
	.cfi_restore_state
	movl	%ebp, %r15d
	subl	%r8d, %r15d
	movl	%r15d, %r9d
	sarl	%r9d
	addl	%r8d, %r9d
	cmpl	%r9d, %r8d
	jge	.L136
	sarl	$2, %r15d
	movl	%r8d, %esi
	movq	%r12, %rdi
	movl	%eax, 12(%rsp)
	addl	%r8d, %r15d
	movl	%r9d, (%rsp)
	movl	%r15d, %edx
	movl	%r8d, 8(%rsp)
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %edx
	leal	1(%r15), %esi
	movq	%r12, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %r9d
	movl	%r15d, %edx
	movq	%r12, %rdi
	movl	8(%rsp), %r8d
	movl	%r9d, %ecx
	movl	%r9d, 4(%rsp)
	movl	%r8d, %esi
	movl	%r8d, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	12(%rsp), %eax
	movl	4(%rsp), %r9d
	movl	(%rsp), %r8d
.L136:
	leal	1(%r9), %r10d
	cmpl	%r10d, %ebp
	jle	.L137
	movl	%ebp, %r15d
	movl	%r10d, %esi
	movq	%r12, %rdi
	movl	%r9d, 12(%rsp)
	subl	%r10d, %r15d
	movl	%r8d, 8(%rsp)
	sarl	%r15d
	movl	%eax, 4(%rsp)
	addl	%r10d, %r15d
	movl	%r10d, (%rsp)
	movl	%r15d, %edx
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	leal	1(%r15), %esi
	movl	%ebp, %edx
	movq	%r12, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %esi
	movl	%ebp, %ecx
	movl	%r15d, %edx
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	12(%rsp), %r9d
	movl	8(%rsp), %r8d
	movl	4(%rsp), %eax
.L137:
	movl	%ebp, %ecx
	movl	%r9d, %edx
	movl	%r8d, %esi
	movq	%r12, %rdi
	movl	%eax, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	(%rsp), %eax
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L144:
	movl	%r15d, %r8d
	sarl	$2, %r8d
	addl	%eax, %r8d
	cmpl	%r8d, %eax
	jge	.L133
	sarl	$3, %r15d
	movl	%eax, %esi
	movq	%r12, %rdi
	movl	%r8d, (%rsp)
	addl	%eax, %r15d
	movl	%eax, 8(%rsp)
	movl	%r15d, %edx
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %edx
	leal	1(%r15), %esi
	movq	%r12, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %r8d
	movl	8(%rsp), %eax
	movl	%r15d, %edx
	movq	%r12, %rdi
	movl	%r8d, %ecx
	movl	%eax, %esi
	movl	%r8d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	4(%rsp), %r8d
	movl	(%rsp), %eax
.L133:
	leal	1(%r8), %r9d
	cmpl	%r9d, %r14d
	jle	.L134
	movl	%r14d, %r15d
	movl	%r9d, %esi
	movq	%r12, %rdi
	movl	%r8d, 8(%rsp)
	subl	%r9d, %r15d
	movl	%eax, 4(%rsp)
	sarl	%r15d
	movl	%r9d, (%rsp)
	addl	%r9d, %r15d
	movl	%r15d, %edx
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	leal	1(%r15), %esi
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %esi
	movl	%r14d, %ecx
	movl	%r15d, %edx
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	8(%rsp), %r8d
	movl	4(%rsp), %eax
.L134:
	movl	%r8d, %edx
	movl	%eax, %esi
	movl	%r14d, %ecx
	movq	%r12, %rdi
	movl	%eax, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	leal	1(%r14), %r8d
	movl	(%rsp), %eax
	cmpl	%r8d, %ebp
	jle	.L135
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L143:
	movl	%r13d, %r15d
	subl	%eax, %r15d
	movl	%r15d, %r8d
	sarl	%r8d
	addl	%eax, %r8d
	cmpl	%r8d, %eax
	jge	.L129
	sarl	$2, %r15d
	movl	%eax, %esi
	movq	%r12, %rdi
	movl	%r8d, (%rsp)
	addl	%eax, %r15d
	movl	%eax, 8(%rsp)
	movl	%r15d, %edx
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %edx
	leal	1(%r15), %esi
	movq	%r12, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %r8d
	movl	8(%rsp), %eax
	movl	%r15d, %edx
	movq	%r12, %rdi
	movl	%r8d, %ecx
	movl	%eax, %esi
	movl	%r8d, 4(%rsp)
	movl	%eax, (%rsp)
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	4(%rsp), %r8d
	movl	(%rsp), %eax
.L129:
	leal	1(%r8), %r9d
	cmpl	%r9d, %r13d
	jle	.L130
	movl	%r13d, %r15d
	movl	%r9d, %esi
	movq	%r12, %rdi
	movl	%r8d, 8(%rsp)
	subl	%r9d, %r15d
	movl	%eax, 4(%rsp)
	sarl	%r15d
	movl	%r9d, (%rsp)
	addl	%r9d, %r15d
	movl	%r15d, %edx
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	leal	1(%r15), %esi
	movl	%r13d, %edx
	movq	%r12, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %esi
	movl	%r13d, %ecx
	movl	%r15d, %edx
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	8(%rsp), %r8d
	movl	4(%rsp), %eax
.L130:
	movl	%r13d, %ecx
	movl	%r8d, %edx
	movl	%eax, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	jmp	.L128
	.p2align 4,,10
	.p2align 3
.L142:
	movl	%eax, %r8d
	sarl	$3, %r8d
	addl	%esi, %r8d
	cmpl	%r8d, %esi
	jge	.L126
	sarl	$4, %eax
	movl	%r8d, (%rsp)
	leal	(%rax,%rsi), %r15d
	movl	%r15d, %edx
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %edx
	leal	1(%r15), %esi
	movq	%r12, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %ecx
	movl	%r15d, %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	(%rsp), %r8d
.L126:
	leal	1(%r8), %eax
	cmpl	%eax, %r14d
	jle	.L127
	movl	%r14d, %r15d
	movl	%eax, %esi
	movq	%r12, %rdi
	movl	%r8d, 4(%rsp)
	subl	%eax, %r15d
	movl	%eax, (%rsp)
	sarl	%r15d
	addl	%eax, %r15d
	movl	%r15d, %edx
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	leal	1(%r15), %esi
	movl	%r14d, %edx
	movq	%r12, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	(%rsp), %esi
	movl	%r14d, %ecx
	movl	%r15d, %edx
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	movl	4(%rsp), %r8d
.L127:
	movl	%r14d, %ecx
	movl	%r8d, %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	leal	1(%r14), %eax
	cmpl	%eax, %r13d
	jle	.L128
	jmp	.L143
	.cfi_endproc
.LFE2421:
	.size	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii, .-_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
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
