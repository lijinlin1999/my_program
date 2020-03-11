	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15
	.globl	_test                   ## -- Begin function test
	.p2align	4, 0x90
_test:                                  ## @test
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	cmpq	%rsi, %rdi
	leaq	_it_(%rip), %rax
	leaq	_another_(%rip), %rcx
	cmovgq	%rax, %rcx
	incq	(%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_it_                    ## @it_
.zerofill __DATA,__common,_it_,8,3
	.globl	_another_               ## @another_
.zerofill __DATA,__common,_another_,8,3

.subsections_via_symbols
