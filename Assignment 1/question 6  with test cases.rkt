;Name: Roy Xia
;Student Number: 101009419

;q6
(define (a-b a b)
   ((cond ((> b 0) +)((= b 0) -)(else *)) a b))

;(a-b 2 6)
;5>0 therefore 2+6=8
(write "for (a-b 2 6) expect 8 answer: ") 
(write (a-b 2 6))
(newline)

;(a-b 3 0)
;b=0 therefore 3-0=3
(write "for (a-b 3 0) expect 3 answer: ") 
(write (a-b 3 0))
(newline)

;(a-b 6 -3)
;b<0 therefore 6*-3=-18
(write "for (a-b 6 -3) expect -18 answer: ") 
(write (a-b 6 -3))
(newline)