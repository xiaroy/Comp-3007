;Name:Roy Xia
;Student Number: 101009419

;q4
;a
(define(fib n)
  (- (* (/ 1 (sqrt 5)) (expt(/ (+ 1 (sqrt 5)) 2) n)) (* (/ 1 (sqrt 5)) (expt(/ (- 1 (sqrt 5)) 2)n))))

;b
(define (fibrec n)
  (if (<= n 2)
      1
      (+ (fibrec (- n 1)) (fibrec (- n 2)))))

;c
(define (testfib n p)
  (if (> (- (fibrec n) (fib n)) p) #f #t))

;testing given cases
(write "for (testfib 40 0.000000001) expect #f answer: ") 
(write (testfib 40 0.000000001))
(newline)

(write "for (testfib 15 0) expect #t answer: ")
(write (testfib 15 0))
(newline)

(write "for (testfib 20 0) expect #f answer: ")
(write (testfib 20 0))
(newline)