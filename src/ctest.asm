; Listing generated by Microsoft (R) Optimizing Compiler Version 19.32.31332.0

	TITLE	C:\Users\User\src\compilers-there-n-back-again\src\ctest.obj
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT

PUBLIC	_scheme_entry
; Function compile flags: /Odtpy
; File C:\Users\User\src\compilers-there-n-back-again\src\ctest.c
_TEXT	SEGMENT
_scheme_entry PROC

; 1    : int scheme_entry() {

	push	ebp
	mov	ebp, esp

; 2    :   return 7; /* should print 7 */

	mov	eax, 82

; 3    : }

	pop	ebp
	ret	0
_scheme_entry ENDP
_TEXT	ENDS
END
