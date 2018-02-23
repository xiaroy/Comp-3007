;Name:Roy Xia
;Student Number: 101009419
;Question: 4
(#%require (only racket/base random))

(define (rps)
  (define score 0)
  (define count 0)
  (define x (read))
  (define y(random 2))
  (display x)
  (display y)
  (cond ((and (= x 0) (= y 0))  write "you chose rock comp chose rock Tie"))
  (cond ((and (= x 0) (= y 1)) (- score 1) write "you chose rock comp chose paper computer win"))
  (cond ((and (= x 0) (= y 2)) (+ score 1) write "you chose rock comp chose scissor you win"))
  (cond ((and (= x 1) (= y 0)) (+ score 1)write "you chose paper comp chose rock you win"))
  (cond ((and (= x 1) (= y 1)) write "you chose paper comp chose paper Tie"))
  (cond ((and (= x 1) (= y 2))  (- score 1) write "you chose paper comp chose scizzor comp win"))
  (cond ((and (= x 2) (= y 0))  (- score 1)  write "you chose scissor comp chose rock comp win"))
  (cond ((and (= x 2) (= y 1))  (+ score 1) write "you chose scissor comp chose paper you win"))
  (cond ((and (= x 2) (= y 2))  write "you chose scissor comp chose scissor Tie"))
  (display score)
  
)