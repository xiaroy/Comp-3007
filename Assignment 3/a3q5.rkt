;Name:Roy Xia
;Student Number: 101009419
;Question: 5

(#%require (only racket/base random))

;
;code taken from the notes

(define the-empty-stream '())

(define-syntax cons-stream
  (syntax-rules ()
    ((cons-stream a b)(cons a (delay b)))))

(define (stream-car s)(car s))
(define (stream-cdr s)(force (cdr s)))

(define (stream-ref stream n)
    (if (= n 0)
        (stream-car stream )
        (stream-ref (stream-cdr stream ) (- n 1))))

(define (stream-null? stream )
    (eq? stream the-empty-stream))


(define (stream-filter predicate stream)
    (cond ((stream-null? stream) 
              the-empty-stream)
          ((predicate (stream-car stream))
              (cons-stream (stream-car stream)
                           (stream-filter predicate (stream-cdr stream))))
          (else (stream-filter predicate (stream-cdr stream)))))

(define (divisible? a b)
    (= (modulo a b) 0))

(define (integers-starting-from n)
    (cons-stream n (integers-starting-from (+ n 1))))

(define integers (integers-starting-from 1))

;a
(define (stream-first n str)
  (if (= n 0) '()
      (cons-stream (stream-car str) (stream-first (- n 1) (stream-cdr str)))
      )
  )

(define (list->stream lis)
  (cond ((null? (car lis)) '())
        (else (cons-stream (car lis) (list->stream (cdr lis)))
              )
        )
  )

(define (stream->list str)
  (if (null? str) '()
      (cons (stream-car str) (stream->list (stream-cdr str))
            )
      )
  )

;b

(define (infinite-1s) (cons-stream 1 (infinite-1s)))

(define (odd-integers) (stream-filter
  (lambda (x) (not (divisible? x 2))) integers))

(define (random-integers)
  (cons-stream (random 100) (random-integers)))

(define (random-integers)
  (cons-stream (random 100) (random-integers)))

;c

(define (partial-sums pos-ints)
  (define (s a b)
    (cons-stream (+ (stream-car a) b)(s (stream-cdr a)(+ b (stream-car a)))))
  (s pos-ints 0))
  

;test

(display "Test B")
(newline)
(display "Print 10 1s")
(newline)
(display "Expect 1 1 1 1 1 1 1 1 1 1 1")
(newline)
(stream->list(stream-first 10 (infinite-1s)))
(newline)

(display "Print 10 odds")
(newline)
(display "Expect 1 3 5 7 9 11 13 15 17 19")
(newline)
(stream->list(stream-first 10 (odd-integers)))
(newline)

(display "Print 10 random numbers from 1 to 100")
(newline)
(display "Expect 10 random b/w 1 -100")
(newline)
(stream->list(stream-first 10 (random-integers)))
(newline)

(display "Test C")
(newline)
(display "Print 10 1s")
(newline)
(display "Expect 1 2 3 4 5 6 7 8 9 10")
(newline)

(stream->list (stream-first 10 (partial-sums (infinite-1s))))
(newline)

  