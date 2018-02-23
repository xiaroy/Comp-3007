;Name: Roy Xia
;Student Number: 101009419

;q3
(define (quadratic a b c)
  (define first (sqrt (- (* b b) (* 4.0 a c))))
  (if (<= (- (* b b) (* 4.0 a c)) 0) #f
    (/ (+ (- b) first) (* 2.0 a))))

;test cases
(write "test case q3 a=1 b=1 c=-1 expect 0.618 answer: ")
(write (quadratic 1 1 -1))
(newline)

(write "test case q3 a=2 b=3 c=1.125 expect false answer: ")
(write (quadratic 2 3 1.125))
(newline)

(write "test case q3 a=5 b=6 c=1 expect -0.2 answer: ")
(write (quadratic 5 6 1))
(newline)



