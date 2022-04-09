(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))

(define (new_expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (* (new_expmod base (/ exp 2) m) (new_expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (new_expmod base (- exp 1) m))
          m))))

;new_expmod is a O(n) process while the original expmod is a O(log n) process.
;This is because in the original expmod square is used so (expmod base (/ exp 2) m) is calculated only once and then squared,
;but in new_expmod an explicit multiplication is use which means that it is being calculated twice, thereby squaring the processing time.
