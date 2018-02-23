;Name: Roy Xia
;Student Number: 101009419

;q1
(define(q1a)
(+ (+ -1 2) (+ -3 4) (+ -5 6)));

(define(q1b)
(+ (- 1 (* (+ 6 7)(- 4 (* 6 2))))12));

(define(q1c)
(- -3 (* (+ 12 (- 9 2)) (/ 2 (- 20 (* 2 5))))));

(define(q1d)
(+ 2.8(* 4.2 (+ (/ 1 3) (/ 2 6)))));

;testing
;confirm a
(write "test case q1 a expects 3 answer: ")
(write (q1a))
(newline)
;confirm b
(write "test case q1 b expects 117 answer: ")
(write (q1b))
(newline)
;confirm c
(write "test case q1 c expects -6.8 answer: ")
(write (q1c))
(newline)
;confirm d
(write "test case q1 d expects 5.6 answer: ")
(write (q1d))
(newline)

