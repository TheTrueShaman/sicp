(define (expt b n)
  (fast-expt 1 b n))

;Iterative process with logarithmic growth in terms of steps taken based on the variable n.
(define (fast-expt a b n)
  (cond ((= n 0) a)
        ((even? n) (fast-expt a (* b b) (/ n 2)))
        (else (fast-expt (* a b) b (- n 1)))))
          
(define (even? n)
  (= (remainder n 2) 0))
