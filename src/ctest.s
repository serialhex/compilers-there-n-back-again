	.text
	.file	"ctest.c"
	.globl	scheme_entry                    # -- Begin function scheme_entry
	.p2align	4, 0x90
	.type	scheme_entry,@function
scheme_entry:                           # @scheme_entry
	.cfi_startproc
# %bb.0:
	movl	$7, %eax
	retq
.Lfunc_end0:
	.size	scheme_entry, .Lfunc_end0-scheme_entry
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 16.0.6"
	.section	".note.GNU-stack","",@progbits
	.addrsig
