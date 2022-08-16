(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (- n 1)))))

(define (power x n)
  (if (= n 1)
      x
      (* x (power x (- n 1)))))

(define (average-damp f)
  (lambda (x) (/ (+ x (f x)) 2)))

(define (nth-root x n)
  (fixed-point 
    ((repeated average-damp (floor (/ (log n) (log 2)))) 
    (lambda (y) 
      (/ x (power y (- n 1)))))
    1.0))

(nth-root 256 2)
