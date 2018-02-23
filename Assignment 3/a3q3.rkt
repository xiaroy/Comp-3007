;Name:Roy Xia
;Student Number: 101009419
;Question: 3

;a
(define (after L n)
    (if (= n 0)
        L
        (after (if (null? L) L (cdr L) ) (- n 1))
        ))

;b
(define (splice L i A)
            (if (= i 0)
                (append A L)
                (cons (car L) (splice (if (null? L) L (cdr L) ) (- i 1) A) )
                ))

;c
(define (splice2 L i n A)
            (if (= n 0)
                (splice L i A)
                (if (= i 0)
                    (append A (after L n))
                    (cons (car L) (splice2 (if (null? L) L (cdr L) ) (- i 1) n A)))))

;testing
;a
(write "Test a")
(newLine)
(write "Test 1 after: ( a b c d e f g h ) 3")
(newLine)
(write "Expected (d e f g h)")
(newLine)
(after '(a b c d e f g h) 3)
(write "Test 2 after: ( a b c d e f g h ) 0")
(newLine)
(write "Expected (a b c d e f g h)")
(newLine)
(after '(a b c d e f g h) 0)
(newLine)

;b
(write "Test b")
(newLine)
(write "Test 1 splice: (1 2 3 4 5) 2")
(newLine)
(write "Expected (1 2 a b c 3 4 5)")
(newLine)
(splice '(1 2 3 4 5) 2 '(a b c))
(write "Test 2 splice: (1 2 3 4 5) 0")
(newLine)
(write "Expected (a b c 1 2 3 4 5)")
(newLine)
(splice '(1 2 3 4 5) 0 '(a b c))
(newLine)

;c
(write "Test c")
(newLine)
(write "Test 1 splice2: (1 2 3 4 5) 2 1")
(newLine)
(write "Expected (1 2 a b c 4 5)")
(newLine)
(splice2 '(1 2 3 4 5) 2 1 '(a b c))
(write "Test 2 splices2: (1 2 3 4 5) 2 0")
(newLine)
(write "Expected (1 2 a b c 3 4 5)")
(newLine)
(splice2 '(1 2 3 4 5) 2 0 '(a b c))
(write "Test 3 splices2: (1 2 3 4 5) 3 4")
(newLine)
(write "Expected (1 2 3 a b c)")
(newLine)
(splice2 '(1 2 3 4 5) 3 4 '(a b c))