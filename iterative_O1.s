	.file	"iterativeMerge.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"cannot create std::vector larger than max_size()"
#NO_APP
	.text
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
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, %rbp
	movq	8(%rdi), %rax
	subq	(%rdi), %rax
	sarq	$2, %rax
	movl	%eax, %edi
	movl	%eax, 52(%rsp)
	movl	$1, 76(%rsp)
	subl	$1, %edi
	movl	%edi, 56(%rsp)
	cmpl	$1, %eax
	jle	.L1
.L2:
	movl	52(%rsp), %eax
	movl	76(%rsp), %edi
	subl	%edi, %eax
	movl	%eax, 60(%rsp)
	testl	%eax, %eax
	jle	.L28
	movl	76(%rsp), %esi
	leal	(%rsi,%rsi), %ebx
	movl	%ebx, 20(%rsp)
	movl	%esi, 48(%rsp)
	movslq	%ebx, %rax
	salq	$2, %rax
	movq	%rax, 64(%rsp)
	movslq	%esi, %rax
	salq	$2, %rax
	movq	%rax, 24(%rsp)
	movq	$0, 8(%rsp)
	movl	$0, 4(%rsp)
	movl	$1, %eax
	subl	%ebx, %eax
	movl	%eax, 72(%rsp)
	jmp	.L27
.L57:
	leaq	.LC0(%rip), %rdi
.LEHB0:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE0:
.L35:
	movq	%r14, 32(%rsp)
	movl	$0, %r12d
.L7:
	movslq	%ebx, %r14
	movabsq	$2305843009213693951, %rax
	cmpq	%r14, %rax
	jb	.L54
	testq	%r14, %r14
	je	.L36
	leaq	0(,%r14,4), %rax
	movq	%rax, 40(%rsp)
	movq	%rax, %rdi
.LEHB1:
	call	_Znwm@PLT
	jmp	.L55
.L54:
	leaq	.LC0(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE1:
.L38:
	endbr64
	movq	%rax, %rbx
	testq	%r12, %r12
	je	.L30
	movq	32(%rsp), %rsi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
.L30:
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.L55:
	movq	%rax, %rdi
	movl	$0, (%rax)
	cmpq	$1, %r14
	je	.L10
	movq	40(%rsp), %rax
	leaq	(%rdi,%rax), %rdx
	leaq	4(%rdi), %rax
	cmpq	%rax, %rdx
	je	.L10
.L11:
	movl	$0, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L11
	jmp	.L10
.L36:
	movq	%r14, 40(%rsp)
	movl	$0, %edi
.L10:
	testl	%r15d, %r15d
	jle	.L56
	movl	16(%rsp), %eax
	leal	1(%rax), %ecx
	salq	$2, %rcx
	movl	$0, %eax
	movq	8(%rsp), %rsi
	addq	0(%rbp), %rsi
.L14:
	movl	(%rsi,%rax), %edx
	movl	%edx, (%r12,%rax)
	addq	$4, %rax
	cmpq	%rcx, %rax
	jne	.L14
	movl	$0, %edx
	movl	$0, %ecx
	testl	%ebx, %ebx
	jle	.L33
.L32:
	salq	$2, %r14
	movl	$0, %eax
	movq	24(%rsp), %rcx
	addq	0(%rbp), %rcx
.L16:
	movl	(%rcx,%rax), %edx
	movl	%edx, (%rdi,%rax)
	addq	$4, %rax
	cmpq	%rax, %r14
	jne	.L16
	testl	%r15d, %r15d
	jle	.L37
	movl	72(%rsp), %eax
	movl	4(%rsp), %esi
	addl	%eax, %esi
	movq	8(%rsp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	jmp	.L20
.L18:
	addl	$1, %ecx
	movl	%esi, %r13d
	movq	0(%rbp), %r9
	movl	%r8d, (%r9,%rax)
.L19:
	addl	$1, %esi
	addq	$4, %rax
	cmpl	%edx, %r15d
	jle	.L39
	cmpl	%ebx, %ecx
	jge	.L39
.L20:
	movslq	%edx, %r8
	movl	(%r12,%r8,4), %r9d
	movslq	%ecx, %r8
	movl	(%rdi,%r8,4), %r8d
	cmpl	%r8d, %r9d
	jg	.L18
	addl	$1, %edx
	movl	%esi, %r13d
	movq	0(%rbp), %r8
	movl	%r9d, (%r8,%rax)
	jmp	.L19
.L39:
	cmpl	%edx, %r15d
	jle	.L17
.L33:
	movslq	%r13d, %r9
	leaq	0(,%r9,4), %rax
	movl	%edx, %esi
	movl	16(%rsp), %r8d
	subl	%edx, %r8d
	leaq	1(%r9,%r8), %r8
	salq	$2, %r8
	movslq	%edx, %rdx
	subq	%r9, %rdx
	leaq	(%r12,%rdx,4), %r9
.L22:
	movl	(%r9,%rax), %r10d
	movq	0(%rbp), %rdx
	movl	%r10d, (%rdx,%rax)
	addq	$4, %rax
	cmpq	%rax, %r8
	jne	.L22
	movl	16(%rsp), %eax
	leal	1(%r13,%rax), %r13d
	subl	%esi, %r13d
.L17:
	cmpl	%ecx, %ebx
	jle	.L23
	movslq	%r13d, %r13
	leaq	0(,%r13,4), %rax
	subl	%ecx, %ebx
	addq	%r13, %rbx
	salq	$2, %rbx
	movslq	%ecx, %rcx
	subq	%r13, %rcx
	leaq	(%rdi,%rcx,4), %rsi
.L24:
	movl	(%rsi,%rax), %ecx
	movq	0(%rbp), %rdx
	movl	%ecx, (%rdx,%rax)
	addq	$4, %rax
	cmpq	%rax, %rbx
	jne	.L24
.L23:
	testq	%rdi, %rdi
	je	.L25
	movq	40(%rsp), %rsi
	call	_ZdlPvm@PLT
.L25:
	testq	%r12, %r12
	je	.L26
	movq	32(%rsp), %rsi
	movq	%r12, %rdi
	call	_ZdlPvm@PLT
.L26:
	movl	20(%rsp), %ebx
	addl	%ebx, 48(%rsp)
	movq	64(%rsp), %rbx
	addq	%rbx, 8(%rsp)
	addq	%rbx, 24(%rsp)
	movl	60(%rsp), %ebx
	cmpl	%ebx, 4(%rsp)
	jge	.L28
.L27:
	movl	48(%rsp), %eax
	subl	$1, %eax
	movl	4(%rsp), %edi
	movl	%edi, %r13d
	movl	20(%rsp), %ebx
	addl	%ebx, %edi
	movl	%edi, 4(%rsp)
	leal	-1(%rdi), %ebx
	movl	52(%rsp), %esi
	cmpl	%esi, %edi
	cmovg	56(%rsp), %ebx
	movl	%eax, %esi
	subl	%r13d, %esi
	movl	%esi, 16(%rsp)
	leal	1(%rsi), %r15d
	subl	%eax, %ebx
	movslq	%r15d, %r14
	movabsq	$2305843009213693951, %rax
	cmpq	%r14, %rax
	jb	.L57
	testq	%r14, %r14
	je	.L35
	leaq	0(,%r14,4), %rax
	movq	%rax, 32(%rsp)
	movq	%rax, %rdi
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %r12
	movl	$0, (%rax)
	cmpq	$1, %r14
	je	.L7
	movq	32(%rsp), %rax
	leaq	(%r12,%rax), %rdx
	leaq	4(%r12), %rax
	cmpq	%rax, %rdx
	je	.L7
.L8:
	movl	$0, (%rax)
	addq	$4, %rax
	cmpq	%rax, %rdx
	jne	.L8
	jmp	.L7
.L37:
	movl	$0, %ecx
	jmp	.L17
.L28:
	sall	76(%rsp)
	movl	76(%rsp), %eax
	cmpl	%eax, 52(%rsp)
	jg	.L2
.L1:
	addq	$88, %rsp
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
.L56:
	.cfi_restore_state
	movl	$0, %ecx
	testl	%ebx, %ebx
	jg	.L32
	jmp	.L17
	.cfi_endproc
.LFE2421:
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
	.uleb128 .L38-.LFB2421
	.uleb128 0
	.uleb128 .LEHB2-.LFB2421
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2421:
	.text
	.size	_Z18mergeSortIterativeRSt6vectorIiSaIiEE, .-_Z18mergeSortIterativeRSt6vectorIiSaIiEE
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
