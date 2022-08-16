(define (iterative-improve good-enough? improve-guess)
  (define (iter guess)
    (let ((next (improve-guess guess)))
      (if (good-enough? guess next)
          next
          (iter next))))
  (lambda (guess) (iter guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? next guess)
    (< (abs (- (square next) x)) 0.001))
  ((iterative-improve good-enough? improve) 1.0))

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (improve-guess guess)
    (f guess))
  (define (try guess)
    (let ((next (improve-guess guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(display (sqrt 16))(newline)
