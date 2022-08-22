(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-point x y)
  (cons x y))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))


(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (make-segment s e)
  (cons s e))

(define (print-segment s)
  (newline)
  (display "[")
  (print-point (start-segment s))
  (display ",")
  (print-point (end-segment s))
  (display "]"))

(define (midpoint-segment s)
  (make-point (/ (+ (x-point (start-segment s)) (x-point (end-segment s))) 2)
              (/ (+ (y-point (start-segment s)) (y-point (end-segment s))) 2)))


(print-point (make-point 6 4))
(define p1 (make-point 1 2))
(define p2 (make-point 3 4))
(define s1 (make-segment p1 p2))
(print-segment s1)
(print-point (midpoint-segment s1))
