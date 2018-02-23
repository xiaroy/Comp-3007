;Name:Roy Xia
;Student Number: 101009419
;Question: 5

(define (inc x) (+ x 1))




(define (identity x) x)

(define (s a b)
  (define (s-interative c d count)
  (if (> c d)
      count
         (s-interative (inc c) (identity d) (+ count c))))
    (if (> a b) "invalid" 
         (s-interative a b 0)))

;Test cases
(write "for (s 2 5) expect 14 answer: ") 
(write (s 2 5))
(newline)

(write "for (s 2 10) expect 54 answer: ") 
(write (s 2 10))
(newline)

(write "for (s 3 5) expect 12 answer: ") 
(write (s 3 5))
(newline)
