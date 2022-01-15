; In applicative order, which is what the interpreter uses, this breaks because it tries to evaluate (p) which cannot be evaluated since it is an infinite loop.
; On the other hand, this works perfectly find in normal order (which is not what the interpreter uses, for actual reasons). 

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))
