;Name:Roy Xia
;Student Number: 101009419
;Question: 2

(define (pascal x y)
(cond ((or (= x y) (= 0 y)) 1)
         (else (+ (pascal (- x 1) (- y 1)) 
                 (pascal (- x 1) y)))))

;Test cases
(write "for (pascal 0 0) expect 1 answer: ") 
(write (pascal 0 0))
(newline)

(write "for (pascal 2 0) expect 1 answer: ") 
(write (pascal 2 0))
(newline)

(write "for (pascal 2 1) expect 2 answer: ") 
(write (pascal 2 1))
(newline)

(write "for (pascal 4 2) expect 6 answer: ") 
(write (pascal 4 2))
(newline)