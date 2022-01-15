; Adds the absolute value of b to a by checking to see if b is negative and subtracting instead of adding if that is true.
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
