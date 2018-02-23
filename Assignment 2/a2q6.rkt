;Name:Roy Xia
;Student Number: 101009419
;Question: 6

;a
(define(cube n)
  (* n n n))

(define(cuberoot n)
  (cuberoot-iteration 1.0 n))

(define (good guess n)
  (<(abs(-(cube guess) n))0.0001))

(define (better guess n)
  (/(+(/ n (* guess guess)) (* 2 guess))3))

;b


;c
;Due to the applicative order evaluation procedure it appears within the new if the operands are evaluated first and therefore gets stuck in a loop as it is a recursive call to square root iteration

;test cases
(write "for (cube 3) expect 27 answer: ") 
(write (cube 3))
(newline)

(write "for (cuberoot 3) expect 1.4422497895989996 answer: ") 
(write (cuberoot 3))
(newline)
