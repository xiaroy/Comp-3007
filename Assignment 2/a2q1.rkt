;Name:Roy Xia
;Student Number: 101009419
;Question: 1

(define (f n)
  (if (< n 4)
      n
     (+  (+ (f(- n 1)) (* 2 (f(- n 2)))) (+ (* 3 (f(- n 3))) (* 4 (f(- n 4)))))))

(define (fiterrative n)
(define (fiterrative a b c d count)
  (if (< count 4)
       a
        (fiterrative (+ a (* 2 b) (* 3 c) (* 4 d)) a b c (- count 1))))
    (if (< n 4)
       n
         (fiterrative 3 2 1 0 n)))

;test cases
(write "for (f 4) expect 10 answer: ") 
(write (f 4))
(newline)

(write "for (f 6) expect 63 answer: ") 
(write (f 6))
(newline)

(write "for (f 10) expect 2533 answer: ") 
(write (f 10))
(newline)

(write "for (f -10) expect -10 answer: ") 
(write (f -10))
(newline)

(write "for (fiterrative 4) expect 10 answer: ") 
(write (f 4))
(newline)

(write "for (fiterrative 6) expect 63 answer: ") 
(write (f 6))
(newline)

(write "for (fiterrative 10) expect 2533 answer: ") 
(write (f 10))
(newline)

(write "for (fitterative -10) expect -10 answer: ") 
(write (f -10))
(newline)