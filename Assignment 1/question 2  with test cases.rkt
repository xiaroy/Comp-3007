;Name: Roy Xia
;Student Number: 101009419

;q2a
(define (reciprocal x)
  (if (= x 0)#f
  (/ 1 x)
  ))

;q2b
(define (f x)
  (+ (* 3 x) (/ 3 x)));

;q2c
(define (g x)
  (* x (/ 1 4)));

;q2d
(define (h x y)
  (cond
  ((< x y) (/ (g x) (f y)))
  ((> x y) (/ (f x) (g y)))
  (else (* (f (g y)) (/ 1 (+ 2 (f(g x))))))))

;q2e
(h (* 2 2)(reciprocal (/ 1 4)))
(h 4 (reciprocal 1/4))
(* (f (g (reciprocal 1/4))) (reciprocal(+ (f (g 4)) 2)))
(* (+ (* 3 (g (reciprocal 1/4))) (/ 3 (g(reciprocal 1/4)))) (/ 1 (+ (f (g 4)) 2)))
(* (+ (* 3 (* (reciprocal 1/4) (reciprocal 4))) (/ 3 (* (reciprocal 1/4) (reciprocal 4)))) (/ 1 (+ (+ (* 3 (g 4)) (/ 3 (g 4))) 2)))
(* (+ (* 3 (* (/ 1 1/4) (/ 1 4))) (/ 3 (* (/ 1 1/4) (/ 1 4)))) (/ 1 (+ (+ (* 3  (* 4 (reciprocal 4))) (/ 3 (* 4 (reciprocal 4)))) 2)))
(* (+ (* 3 (* 4 1/4)) (/ 3(* 4 1/4))) (/ 1 (+ (+ (* 3  (* 4 (/ 1 4))) (/ 3 (* 4 (/ 1 4)))) 2)))
(* (+ (* 3 1) (/ 3 1)) (/ 1 (+ (+ (* 3  (* 4 1/4)) (/ 3 (* 4 1/4))) 2)))(* (+ 3 3) (/ 1 (+ (+ (* 3  1) (/ 3 1)) 2)))
(* 6 (/ 1 (+ (+ 3 3) 2)))
(* 6 (/ 1 (+ 6 2)))
(* 6 (/ 1 8))
(* 6 1/8)

;q2f
(h (* 2 2)(reciprocal (/ 1 4)))
(h(* 2 2) (reciprocal (/ 1 4)))
(h 4 (reciprocal 1/4))
(* (f (g (reciprocal 1/4))) (reciprocal(+ (f (g 4)) 2)))
(* (+ (* 3 (g (reciprocal 1/4))) (/ 3 (g(reciprocal 1/4)))) (/ 1 (+ (f (g 4)) 2)))
(* (+ (* 3 (* (reciprocal 1/4) (reciprocal 4))) (/ 3 (* (reciprocal 1/4) (reciprocal 4)))) (/ 1 (+ (+ (* 3 (g 4)) (/ 3 (g 4))) 2)))
(* (+ (* 3 (* (/ 1 1/4) (/ 1 4))) (/ 3 (* (/ 1 1/4) (/ 1 4)))) (/ 1 (+ (+ (* 3  (* 4 (reciprocal 4))) (/ 3 (* 4 (reciprocal 4)))) 2)))
(* (+ (* 3 (* (/ 1 1/4) (/ 1 4))) (/ 3 (* (/ 1 1/4) (/ 1 4)))) (/ 1 (+ (+ (* 3  (* 4 (/ 1 4))) (/ 3 (* 4 (/ 1 4)))) 2)))
(* (+ (* 3 (* (/ 1 1/4) (/ 1 4))) (/ 3 (* (/ 1 1/4) (/ 1 4)))) (/ 1 (+ (+ (* 3  (* 4 1/4)) (/ 3 (* 4 1/4))) 2)))
(* (+ (* 3 1) (/ 3 1)) (/ 1 (+ (+ (* 3  1) (/ 3 1)) 2)))
(* (+ 3 3) (/ 1 (+ (+ 3 3) 2)))
(* (+ 3 3) (/ 1 (+ (+ 3 3) 2)))
(* (+ 3 3) (/ 1 (+ 6 2)))
(* (+ 3 3) (/ 1 8))
(* 6 1/8)

;testing
;test a
(write "for (reciprocal 10) expect 1/10 answer: ") 
(write (reciprocal 10))
(newline)

(write "for (reciprocal 0) expect false answer: ")
(write (reciprocal 1000))
(newline)

(write "for (reciprocal -10) expect -1/10 answer: ")
(write (reciprocal -10))
(newline)

;test b
(write "for (f 1000) expect (f 1000)=3000003/1000 answer: ")
(write (f 1000))
(newline)

(write "for (f 3) expect (f 3)= 10 answer: ")
(write (f 3))
(newline)

(write "for (f -3) expect (f -3)=-10 answer: ")
(write (f -3))
(newline)

;test c
(write "for (g 3) expect (g 3)=3/4 answer: ")
(write (g 3))
(newline)

(write "for (g -3) expect (g -3)=-3/4 answer: ")
(write (g -3))
(newline)

(write "for (g 0) expect (g 0)=0 answer: ")
(write (g 0))
(newline)

;test d
(write "for (h 2 1) expect (h 2 1)= answer: ")
(write (h 2 1))
(newline)

(write "for (h 1 2) expect (h 1 2)= answer: ")
(write (h 1 2))
(newline)

(write "for (h 2 2) expect (h 2 2)= answer: ")
(write (h 2 2))
(newline)
