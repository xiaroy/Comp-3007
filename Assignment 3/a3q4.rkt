;Name:Roy Xia
;Student Number: 101009419
;Question: 4

;helper function for sqr since i forgot the import name
(define (sqr x)
  (* x x))

;a
(define (depth li)
  (define (b li2 cDepth mDepth)
    (if (null? li2)
        (+ mDepth 1)
        (if (list? li2)
            (if (list? (car li2))
                (b (car li2)(+ 1 cDepth) mDepth)
                (b (cdr li2) cDepth (max cDepth mDepth)))
            0)))
  (b li 0 0))

;b
(define (treemap sqr li)
  (if (null? li)
      '()
      (if (list? li)
          (cons (treemap sqr (car li))(treemap sqr (cdr li)))
          (sqr li))))

;c
(define (flattenList li)
  (if (null? li)
      '()
      (if (list? li)
          (append (flattenList (car li))(flattenList(cdr li)))
          (list li))))

;testing
;a
(write "Test A")
(newLine)
(write "test case 1: 'a")
(newLine)
(write "expect: 0")
(newLine)
(depth 'a)
(write "test case 2: '(a)")
(newLine)
(write "expect: 1")
(newLine)
(depth '(a))
(write "test case 3: '(a (b) c)")
(newLine)
(write "expect: 2")
(newLine)
(depth '(a (b) c))
(write "test case 4: '(((((a(((b)))))))))")
(newLine)
(write "expect: 8")
(newLine)
(depth '(((((a(((b)))))))))
(newLine)

(write "Test B")
(write "test case 1: '(1 (2 3) ((4 5 6 (7)))(((8 (9))))))")
(newLine)
(write "expect: (1 2 3 4 5 6 7 8 9)")
(newLine)
(flattenList '(1 (2 3) ((4 5 6 (7)))(((8 (9))))))
(newLine)

(write "Test C")
(write "test case 1: '(1 (2 3) ((4 5) (6 7)) (((8 (9))))))")
(newLine)
(write "expect: (1 (4 9) ((16 25) (36 49)) (((64 (81)))))")
(newLine)
(treemap sqr '(1 (2 3) ((4 5) (6 7)) (((8 (9))))))

;(depth '(((((a(((b)))))))))