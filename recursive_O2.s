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
	subl	%edx, %ecx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movabsq	$2305843009213693951, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 16(%rsp)
	movl	%edx, %edi
	subl	%esi, %edi
	movl	%edx, 28(%rsp)
	leal	1(%rdi), %r13d
	movl	%edi, 24(%rsp)
	movslq	%r13d, %r15
	cmpq	%r15, %r14
	jb	.L66
	movl	%esi, %ebx
	movl	%ecx, %ebp
	testq	%r15, %r15
	je	.L67
	leaq	0(,%r15,4), %rcx
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	cmpq	$1, %r15
	movq	8(%rsp), %rcx
	movl	$0, (%rax)
	movq	%rax, %r12
	je	.L68
	leaq	4(%rax), %rdi
	leaq	(%rax,%rcx), %rax
	cmpq	%rax, %rdi
	je	.L69
	leaq	-4(%rcx), %rdx
	xorl	%esi, %esi
	movq	%rcx, 32(%rsp)
	call	memset@PLT
	movslq	%ebp, %rax
	movq	32(%rsp), %rcx
	cmpq	%rax, %r14
	movq	%rax, 8(%rsp)
	jb	.L10
.L62:
	movq	%rcx, %r15
	testq	%rax, %rax
	je	.L70
.L5:
	movq	8(%rsp), %rax
	leaq	0(,%rax,4), %r14
	movq	%r14, %rdi
	movq	%r14, 32(%rsp)
.LEHB1:
	call	_Znwm@PLT
	cmpq	$1, 8(%rsp)
	movl	$0, (%rax)
	movq	%rax, %rcx
	je	.L71
	leaq	4(%rax), %rdi
	leaq	(%rax,%r14), %rax
	cmpq	%rax, %rdi
	je	.L14
	leaq	-4(%r14), %rdx
	xorl	%esi, %esi
	movq	%rcx, 40(%rsp)
	call	memset@PLT
	movq	40(%rsp), %rcx
.L14:
	testl	%r13d, %r13d
	je	.L64
.L8:
	movslq	24(%rsp), %rax
	movslq	%ebx, %r8
	leaq	4(,%rax,4), %r9
	movq	16(%rsp), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	leaq	(%rdi,%r8,4), %rsi
	.p2align 4,,10
	.p2align 3
.L15:
	movl	(%rsi,%rax), %edx
	movl	%edx, (%r12,%rax)
	addq	$4, %rax
	cmpq	%rax, %r9
	jne	.L15
	movq	8(%rsp), %rax
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	0(,%rax,4), %r14
	testl	%ebp, %ebp
	jle	.L32
.L13:
	movslq	28(%rsp), %rax
	leaq	(%rdi,%rax,4), %rsi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L17:
	movl	4(%rsi,%rax), %edx
	movl	%edx, (%rcx,%rax)
	addq	$4, %rax
	cmpq	%r14, %rax
	jne	.L17
	testl	%r13d, %r13d
	je	.L40
	addl	$1, %ebx
	xorl	%edx, %edx
	xorl	%esi, %esi
	movslq	%ebx, %rbx
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L72:
	movl	%r8d, %eax
	addl	$1, %esi
	movl	%eax, -4(%rdi,%rbx,4)
	leaq	1(%rbx), %rax
	cmpl	%edx, %ebp
	jle	.L43
.L73:
	cmpl	%esi, %r13d
	jle	.L43
	movq	%rax, %rbx
.L21:
	movslq	%esi, %rax
	movl	(%r12,%rax,4), %r8d
	movslq	%edx, %rax
	movl	(%rcx,%rax,4), %eax
	cmpl	%r8d, %eax
	jge	.L72
	addl	$1, %edx
	movl	%eax, -4(%rdi,%rbx,4)
	leaq	1(%rbx), %rax
	cmpl	%edx, %ebp
	jg	.L73
.L43:
	cmpl	%esi, %r13d
	jle	.L23
	movslq	%ebx, %r8
.L32:
	movl	24(%rsp), %r11d
	movslq	%esi, %rax
	leaq	(%rdi,%r8,4), %r9
	leaq	(%r12,%rax,4), %r10
	xorl	%eax, %eax
	subl	%esi, %r11d
	.p2align 4,,10
	.p2align 3
.L24:
	movl	(%r10,%rax,4), %r8d
	movl	%r8d, (%r9,%rax,4)
	movq	%rax, %r8
	addq	$1, %rax
	cmpq	%r11, %r8
	jne	.L24
	addl	%r13d, %ebx
	subl	%esi, %ebx
.L23:
	cmpl	%ebp, %edx
	jge	.L27
.L18:
	subl	%edx, %ebp
	movslq	%ebx, %rbx
	movslq	%edx, %rdx
	xorl	%eax, %eax
	salq	$2, %rbp
	leaq	(%rcx,%rdx,4), %r8
	leaq	(%rdi,%rbx,4), %rsi
	.p2align 4,,10
	.p2align 3
.L26:
	movl	(%r8,%rax), %edx
	movl	%edx, (%rsi,%rax)
	addq	$4, %rax
	cmpq	%rax, %rbp
	jne	.L26
.L27:
	testq	%rcx, %rcx
	je	.L6
	movq	32(%rsp), %rsi
	movq	%rcx, %rdi
	call	_ZdlPvm@PLT
.L6:
	testq	%r12, %r12
	je	.L1
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r15, %rsi
	movq	%r12, %rdi
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
.L67:
	.cfi_restore_state
	movslq	%ecx, %rax
	xorl	%r12d, %r12d
	movq	%rax, 8(%rsp)
	cmpq	%rax, %r14
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
.L68:
	.cfi_restore_state
	movslq	%ebp, %rax
	movl	$4, %r15d
	movq	%rax, 8(%rsp)
	cmpq	%rax, %r14
	jb	.L4
	testq	%rax, %rax
	jne	.L5
.L63:
	movq	$0, 32(%rsp)
	xorl	%ecx, %ecx
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L70:
	movq	$0, 8(%rsp)
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L71:
	movq	$4, 32(%rsp)
	testl	%r13d, %r13d
	jne	.L8
.L64:
	movq	16(%rsp), %rax
	movq	(%rax), %rdi
	jmp	.L13
.L69:
	movslq	%ebp, %rax
	movq	%rax, 8(%rsp)
	cmpq	%rax, %r14
	jnb	.L62
.L10:
	movq	%rcx, %r15
.L4:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE1:
	.p2align 4,,10
	.p2align 3
.L40:
	xorl	%edx, %edx
	jmp	.L18
.L66:
	leaq	.LC0(%rip), %rdi
.LEHB2:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE2:
.L42:
	endbr64
	movq	%rax, %rbx
	jmp	.L30
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
	.uleb128 .L42-.LFB2420
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
.L30:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	testq	%r12, %r12
	je	.L31
	movq	%r15, %rsi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
.L31:
	movq	%rbx, %rdi
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
	jl	.L79
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	%edx, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	subl	%esi, %r13d
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	sarl	%r13d
	movl	%edx, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	addl	%esi, %r13d
	movl	%esi, %ebx
	movl	%r13d, %edx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	leal	1(%r13), %esi
	movl	%ebp, %edx
	movq	%r12, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movl	%ebp, %ecx
	movl	%r13d, %edx
	movl	%ebx, %esi
	movq	%r12, %rdi
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
	jmp	_Z5mergeRSt6vectorIiSaIiEEiii
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
