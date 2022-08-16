(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (display guess) (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

;This is without damping. It takes 35 steps to complete
(display (fixed-point (lambda (x) (/ (log 1000) (log x))) 2)) (newline)

;This is with damping. It takes 10 steps to complete. In this case, damping is useful and increases speed of convergance.
(display (fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2)) (newline)
