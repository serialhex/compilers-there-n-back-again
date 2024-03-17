
(define fxshift      2)
(define fxmask    #x03)
(define bool_f    #x2f)
(define bool_t    #x6f)
(define nil_val   #x3f)
(define char-tag  #x0f)
(define wordsize     4) ; bytes

(define fixnum-bits (- (* wordsize 8) fxshift))
(define fxlower (- (expt 2 (- fixnum-bits 1))))
(define fxupper (sub1 (expt 2 (- fixnum-bits 1))))

(define (fixnum? x)
  (and (integer? x) (exact? x) (<= fxlower x fxupper)))

(define (immediate? x)
  (or (fixnum? x) (boolean? x) (char? x) (null? x)))

(define (shift-tag val tag)
  (bitwize-ior (ash val 8) tag))

(define (immediate-rep x)
  (cond
    [(fixnum? x)  (ash x fxshift)]
    [(char? x)    (shift-tag (char->integer x) char-tag)]
    [(boolean? x) (if x bool_t bool_f)]
    [(null? x)    nil_val]))

(define (emit-program x)
  (unless (immediate? x) (error 'type "There be an error"))
  (emit "    .text")
  (emit "    .globl scheme_entry")
  (emit "    .type scheme_entry, @function")
  (emit "scheme_entry:")
  (emit "    movl $~s, %eax" (immediate-rep x))
  (emit "    ret"))
