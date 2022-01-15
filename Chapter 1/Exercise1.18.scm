; Multiplication function.
(define (mult a b c)
	(cond ((= b 0) c)
		((even? b)
		(mult (* 2 a) (/ b 2) c))
		(else  
		(mult a (- b 1) (+ c a)))))

; Check if number is even.
(define (even? x)
		(= (remainder x 2) 0))
