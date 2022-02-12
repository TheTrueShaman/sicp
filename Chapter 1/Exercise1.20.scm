(define (gcd a b)
  (if (= b 0)
      a 
      (gcd b (remainder a b))))

(gcd 206 40)
;Normal-order evaluation
gcd(206 40)

;(if (= 40 0)
;    206
;    (gcd 40 (remainder 206 40)))

;(gcd 40 (remainder 206 40))

;(if (= (remainder 206 40) 0)
;    40
;    (gcd (remainder 206 40)
;         (remainder 40 (remainder 206 40))))
; 1*remainder

;(if (= 6 0)
;    40
;    (gcd (remainder 206 40)
;         (remainder 40 (remainder 206 40))))

;(gcd (remainder 206 40)
;     (remainder 40 (remainder 206 40)))

;(if (= (remainder 40 (remainder 206 40)) 0)
;    (remainder 206 40)
;    (gcd (remainder 40 (remainder 206 40))
;         (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
; 1*remainder

;(if (= (remainder 40 6) 0)
;    (remainder 206 40)
;    (gcd (remainder 40 (remainder 206 40))
;         (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
; 1*remainder

;(if (= 4 0)
;    (remainder 206 40)
;    (gcd (remainder 40 (remainder 206 40))
;         (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

;(gcd (remainder 40 (remainder 206 40))
;     (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))

;(if (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0)
;    (remainder 40 (remainder 206 40))
;    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
;         (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))
; 4*remainder

;(if (= 2 0)
;    (remainder 40 (remainder 206 40))
;    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
;         (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))))

;(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
;     (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

;(if (= (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) 0)
;    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
;    (gcd (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) (remainder a  (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))))
; 7*remainder

;(if (= 0 0)
;    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
;    (gcd (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))) (remainder a  (remainder (remainder 40 (remainder 206 40)) (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))))

;(remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
; 4*remainder

;Using normal-order evaluation, remainder is called 18 times.


(gcd 206 40)
;Applicative-order evaluation

;(if (= 40 0)
;    206
;    (gcd 40 (remainder 206 40)))
; 1*remainder

;(gcd 40 6)

;(if (= 6 0)
;    40
;    (gcd 6 (remainder 40 6)))
; 1*remainder

;(gcd 6 4)

;(if (= 4 0)
;    6
;    (gcd 4 (remainder 6 4)))
; 1*remainder

;(gcd 4 2)

;(if (= 2 0)
;    4
;    (gcd 2 (remainder 4 2)))
; 1*remainder

;(gcd 2 0)

;(if (= 0 0)
;    2
;    (gcd 0 (remainder 2 0)))

;Using applicative-order evaluation, remainder is called 4 times.
    
