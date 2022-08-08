(define (cont-frac-iter N D K val)
  (display val) (newline)
  (if (= K 0)
      val
      (cont-frac-iter N D (- K 1) (/ (N K) (+ (D K) val)))))

(define (cont-frac-recursive n d k)
  (define (recur i)
    (if (= k i)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (recur (+ 1 i))))))
  (recur 1))

;K must be 11 or larger
(cont-frac-iter (lambda (i) 1.0) (lambda (i) 1.0) 11 0)
