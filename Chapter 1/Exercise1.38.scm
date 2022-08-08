(define (cont-frac-iter N D K val)
  (display val) (newline)
  (if (= K 0)
      val
      (cont-frac-iter N D (- K 1) (/ (N K) (+ (D K) val)))))

(define e-minus-2 (cont-frac-iter (lambda (i) 1.0) 
                (lambda (i) 
                  (if (= (remainder (+ i 1) 3) 0)
                      (* 2 (/ (+ i 1) 3))
                      1))
                15 0))

(display (+ e-minus-2 2))
