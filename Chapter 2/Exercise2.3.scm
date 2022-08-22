(define (x-point p) (car p))
(define (y-point p) (cdr p))

(define (make-point x y)
  (cons x y))

(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (make-segment p1 p2)
  (cons p1 p2))

;Using segments
(define (rect-one s1 s2 s3 s4)
  (cons (cons s1 s2) (s3 s4)))

(define (top-one r) (car (car r)))
(define (right-one r) (cdr (car r)))
(define (bottom-one r) (car (cdr r)))
(define (left-one r) (cdr (cdr r)))

;Not using segments (start is a point which represents top left of the rectangle)
(define (rect-two start height width)
  (cons start (cons height width)))

(define (top-two r) (cdr (cdr r)))
(define (right-two r) (car (cdr r)))
(define (bottom-two r) (cdr (cdr r)))
(define (left-two r) (car (cdr r)))

(define (perimeter r)
  (* 2 (+ (top r) (right r))))

(define (area r)
  (* (top r) (right r)))

;Yes, these representations aren't perfect and you could certainly do better,
;but they achieve all that the exercise requires (I think).
