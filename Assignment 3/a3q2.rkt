;Name:Roy Xia
;Student Number: 101009419
;Question: 2

;a
(define (special-cons x y)
		(lambda (m) (m x y)))

(define (special-car z)
  (z (lambda (p q) p)))

(define (special-cdr z)
  (z (lambda (p q) q)))


;b
(define (triple x y z)
		(lambda (m) (m x y z)))

(define (first z)
  (z (lambda (p q r) p)))

(define (second z)
  (z (lambda (p q r) q)))

(define (third z)
  (z (lambda (p q r) r)))

;testing
;a
(write "Test a")
(newLine)
(write "Test 1 car: ( 1 2 )")
(newLine)
(write "Expected 1")
(newLine)
(special-car (special-cons 1 2))


(write "Test 2 cdr: ( 1 2 )")
(newLine)
(write "Expected 2")
(newLine)
(special-cdr (special-cons 1 2))

;b
(write "Test b")
(newLine)
(write "Test 1 first: ( 1 2 3 )")
(newLine)
(write "Expected 1")
(newLine)
(first (triple 1 2 3))
(write "Test 2 second: ( 1 2 3 )")
(newLine)
(write "Expected 2")
(newLine)
(second (triple 1 2 3))
(write "Test 2 third: ( 1 2 3 )")
(newLine)
(write "Expected 3")
(newLine)
(third (triple 1 2 3))