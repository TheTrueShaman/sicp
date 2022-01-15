; Blanked for a reason
;(define (sqrt-iter guess x)
;  (if (good-enough? guess x)
;      guess
;      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (square x) (* x x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
; This breaks, giving "Aborting!: maximum recursion depth exceeded", because it uses new-if, which uses "cond", which evaluates everything unlike "if".
; Because of this, it calculates way too much and breaks.

(define (sqrt x)
  (sqrt-iter 1.0 x))
