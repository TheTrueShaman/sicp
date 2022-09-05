(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))

(add-1 zero)

(add-1 (lambda (f) (lambda (x) x)))

(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) x) f) x)))))

(lambda (f) (lambda (x) (f (f x))))

(define one (lambda (f) (lambda (x) (f (f x)))))

(add-1 one)

(add-1 (lambda (f) (lambda (x) (f (f x)))))

(lambda (f) (lambda (x) (f (((lambda (f) (lambda (x) (f (f x)))) f) x))))

(lambda (f) (lambda (x) (f (f (f x)))))

(define two (lambda (f) (lambda (x) (f (f (f x))))))

(define (add  m n)
  (lambda (f) (lambda (x) ((m f) ((n f) x)))))

(define one   (add-1 zero))
(define two   (add-1  one))
(define three (add-1  two))

(display ((zero add-1) 0)) (newline)
(display (((add-1 zero) add-1) 0)) (newline)
(display (((add-1 (add-1 zero)) add-1) 0)) (newline)
(display (((add-1 (add-1 zero)) add-1) 0)) (newline)
(display (((add three two) add-1) 0)) (newline)
