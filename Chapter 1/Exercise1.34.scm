(define (f g) (g 2))

(f square)
;4

(f (lambda (z) (* z (+ z 1))))
;6

(f f)
;(f 2)
;(2 2)
;This operation will fail as 2 is not a function.
