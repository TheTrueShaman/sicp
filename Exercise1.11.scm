; Recursive Function

(define (f n) 
(if (< n 3)
n  
(+ (f (- n 1)) (f (- n 2)) (f (- n 3))))
)

; Iterative Function

(define (g n)
(if (< n 3)
n
(g-iter 3 n 0 1 2)))

(define (g-iter current goal a b c)
(if (= current goal) 
(+ a b c)
(g-iter (+ current 1) goal b c (+ a b c)))
)
