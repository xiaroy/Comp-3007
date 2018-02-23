;Name:Roy Xia
;Student Number: 101009419
;Question: 3

(define (digits n)
  ;(if (= n 0) ; case for if n =0 does not count as a significant digit however if it lies inbetween it should be a significant number placeholder
         ; 0
  (if (and (>= n -9)(<= n 9))
      1
          (+ 1 (digits(/ n 10)))))

;Test cases
(write "for (digits 0) expect 1 answer: ") 
(write (digits 0))
(newline)

(write "for (digits 9) expect 1 answer: ") 
(write (digits 9))
(newline)

(write "for (digits 11)) expect 2 answer: ") 
(write (digits 11))
(newline)

(write "for (digits 16789) expect 5 answer: ") 
(write (digits 16789))
(newline)

(write "for (digits 0.8) expect 1 answer: ") 
(write (digits 0.8))
(newline)