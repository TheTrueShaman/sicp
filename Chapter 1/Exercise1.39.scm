(define (cont-frac-iter N D K val)
  (display val) (newline)
  (if (= K 0)
      val
      (cont-frac-iter N D (- K 1) (/ (N K) (+ (D K) val)))))

(define (tan-cf x k)
  (cont-frac-iter (lambda (i)
		    (if (= i 1)
			x
			(- 0 (square x))))
		  
		  (lambda (i) (- (* i 2) 1))

		  k

		  0))


(tan-cf 1 10)
