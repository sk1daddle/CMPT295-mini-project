	.file	"recursiveMerge.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"cannot create std::vector larger than max_size()"
#NO_APP
	.text
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
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, %rbx
	movl	%edx, 12(%rsp)
	movl	%edx, %edi
	subl	%esi, %edi
	movl	%edi, 8(%rsp)
	leal	1(%rdi), %r15d
	subl	%edx, %ecx
	movslq	%r15d, %r14
	movq	%r14, %rax
	shrq	$61, %rax
	jne	.L43
	movl	%esi, %r12d
	movl	%ecx, %ebp
	testq	%r14, %r14
	je	.L27
	leaq	0(,%r14,4), %rax
	movq	%rax, 16(%rsp)
	movq	%rax, %rdi
.LEHB0:
	call	_Znwm@PLT
	movq	%rax, %r13
	movl	$0, (%rax)
	cmpq	$1, %r14
	je	.L3
	movq	16(%rsp), %rax
	leaq	0(%r13,%rax), %rdx
	leaq	4(%r13), %rax
	cmpq	%rax, %rdx
	je	.L3
.L4:
	movl	$0, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L4
	jmp	.L3
.L43:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE0:
.L27:
	movq	%r14, 16(%rsp)
	movl	$0, %r13d
.L3:
	movslq	%ebp, %r14
	movq	%r14, %rax
	shrq	$61, %rax
	jne	.L44
	testq	%r14, %r14
	je	.L28
	leaq	0(,%r14,4), %rax
	movq	%rax, 24(%rsp)
	movq	%rax, %rdi
.LEHB1:
	call	_Znwm@PLT
	jmp	.L45
.L44:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE1:
.L30:
	endbr64
	movq	%rax, %rbx
	testq	%r13, %r13
	je	.L24
	movq	16(%rsp), %rsi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
.L24:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L45:
	movq	%rax, %rdi
	movl	$0, (%rax)
	cmpq	$1, %r14
	je	.L6
	movq	24(%rsp), %rax
	leaq	(%rdi,%rax), %rdx
	leaq	4(%rdi), %rax
	cmpq	%rax, %rdx
	je	.L6
.L7:
	movl	$0, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L7
	jmp	.L6
.L28:
	movq	%r14, 24(%rsp)
	movl	$0, %edi
.L6:
	testl	%r15d, %r15d
	jle	.L46
	movl	8(%rsp), %eax
	leal	1(%rax), %ecx
	salq	$2, %rcx
	movslq	%r12d, %rax
	movq	(%rbx), %rdx
	leaq	(%rdx,%rax,4), %rsi
	movl	$0, %eax
.L10:
	movl	(%rsi,%rax), %edx
	movl	%edx, 0(%r13,%rax)
	addq	$4, %rax
	cmpq	%rax, %rcx
	jne	.L10
	movl	$0, %edx
	movl	$0, %ecx
	testl	%ebp, %ebp
	jle	.L26
.L25:
	salq	$2, %r14
	movslq	12(%rsp), %rdx
	movq	(%rbx), %rax
	leaq	(%rax,%rdx,4), %rcx
	movl	$0, %eax
.L12:
	movl	4(%rcx,%rax), %edx
	movl	%edx, (%rdi,%rax)
	addq	$4, %rax
	cmpq	%rax, %r14
	jne	.L12
	testl	%r15d, %r15d
	jle	.L29
	leal	1(%r12), %esi
	movslq	%r12d, %rax
	salq	$2, %rax
	movl	$0, %ecx
	movl	$0, %edx
	jmp	.L16
.L14:
	addl	$1, %ecx
	movl	%esi, %r12d
	movq	(%rbx), %r9
	movl	%r8d, (%r9,%rax)
.L15:
	addl	$1, %esi
	addq	$4, %rax
	cmpl	%edx, %r15d
	jle	.L31
	cmpl	%ecx, %ebp
	jle	.L31
.L16:
	movslq	%edx, %r8
	movl	0(%r13,%r8,4), %r9d
	movslq	%ecx, %r8
	movl	(%rdi,%r8,4), %r8d
	cmpl	%r8d, %r9d
	jg	.L14
	addl	$1, %edx
	movl	%esi, %r12d
	movq	(%rbx), %r8
	movl	%r9d, (%r8,%rax)
	jmp	.L15
.L31:
	cmpl	%edx, %r15d
	jle	.L13
.L26:
	movslq	%r12d, %rsi
	leaq	0(,%rsi,4), %rax
	movl	%edx, %r10d
	movl	8(%rsp), %r8d
	subl	%edx, %r8d
	leaq	1(%rsi,%r8), %r8
	salq	$2, %r8
	movslq	%edx, %rdx
	subq	%rsi, %rdx
	leaq	0(%r13,%rdx,4), %r9
.L18:
	movl	(%r9,%rax), %esi
	movq	(%rbx), %rdx
	movl	%esi, (%rdx,%rax)
	addq	$4, %rax
	cmpq	%r8, %rax
	jne	.L18
	movl	8(%rsp), %eax
	leal	1(%rax,%r12), %r12d
	subl	%r10d, %r12d
.L13:
	cmpl	%ecx, %ebp
	jle	.L19
	movslq	%r12d, %r12
	leaq	0(,%r12,4), %rax
	subl	%ecx, %ebp
	addq	%r12, %rbp
	salq	$2, %rbp
	movslq	%ecx, %rcx
	subq	%r12, %rcx
	leaq	(%rdi,%rcx,4), %rsi
.L20:
	movl	(%rsi,%rax), %ecx
	movq	(%rbx), %rdx
	movl	%ecx, (%rdx,%rax)
	addq	$4, %rax
	cmpq	%rax, %rbp
	jne	.L20
.L19:
	testq	%rdi, %rdi
	je	.L21
	movq	24(%rsp), %rsi
	call	_ZdlPvm@PLT
.L21:
	testq	%r13, %r13
	je	.L1
	movq	16(%rsp), %rsi
	movq	%r13, %rdi
	call	_ZdlPvm@PLT
.L1:
	addq	$40, %rsp
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
.L29:
	.cfi_restore_state
	movl	$0, %ecx
	jmp	.L13
.L46:
	movl	$0, %ecx
	testl	%ebp, %ebp
	jg	.L25
	jmp	.L13
	.cfi_endproc
.LFE2420:
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
	.uleb128 .L30-.LFB2420
	.uleb128 0
	.uleb128 .LEHB2-.LFB2420
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2420:
	.text
	.size	_Z5mergeRSt6vectorIiSaIiEEiii, .-_Z5mergeRSt6vectorIiSaIiEEiii
	.globl	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	.type	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii, @function
_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii:
.LFB2421:
	.cfi_startproc
	endbr64
	cmpl	%edx, %esi
	jl	.L53
	ret
.L53:
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %r13
	movl	%esi, %ebx
	movl	%edx, %ebp
	movl	%edx, %eax
	subl	%esi, %eax
	movl	%eax, %r12d
	shrl	$31, %r12d
	addl	%eax, %r12d
	sarl	%r12d
	addl	%esi, %r12d
	movl	%r12d, %edx
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	leal	1(%r12), %esi
	movl	%ebp, %edx
	movq	%r13, %rdi
	call	_Z18mergeSortRecursiveRSt6vectorIiSaIiEEii
	movl	%ebp, %ecx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movq	%r13, %rdi
	call	_Z5mergeRSt6vectorIiSaIiEEiii
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
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
