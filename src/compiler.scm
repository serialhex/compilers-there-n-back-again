
(define (emit-program x)
  (unless (integer? x) (error 'type "There be an error"))
  (emit "    .text")
  (emit "    .globl scheme_entry")
  (emit "    .type scheme_entry, @function")
  (emit "scheme_entry:")
  (emit "    movl $~s, %eax" x)
  (emit "    ret"))

