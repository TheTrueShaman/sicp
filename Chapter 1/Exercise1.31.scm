(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* a result))))
  (iter a 1))

(define (product-recursive term a next b)
  (if (> a b)
      1
      (* (term a)
         (product-recursive term (next a) next b))))

; I will fix this, it docsn't work correctly atm
(define (wallis-product n)
  (define (term n)
    (* (/ (* 2 n)
          (- (* 2 n) 1))
       (/ (* 2 n)
          (+ (* 2 n) 1))))
  (product term 1.0 inc n))

(define (identity x) x)

(define (inc n) (+ n 1))

(define (factorial n)
  (product identity 1 inc n))

(wallis-product 10)

(factorial 5)
