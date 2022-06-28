(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner a result))))
  (iter a null-value))

(define (accumulate-recursive combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
		    (accumulate-recursive term (next a) next b))))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (sum-recursive term a next b)
  (accumulate-recursive + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (product-recursive term a next b)
  (accumulate-recursive * 1 term a next b))
