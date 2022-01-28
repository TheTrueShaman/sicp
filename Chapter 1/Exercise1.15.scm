(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

;a: 6 times
;b: The number of steps increases in the form Θ(log(a)). The space used can be described by a linear order of growth or Θ(a).
