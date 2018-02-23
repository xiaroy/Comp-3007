;Name:Roy Xia
;Student Number: 101009419
;Question: 1

;helper functions

(define (make-interval a b)
  (cons a b))

(define (lower-bound interval)
  (car interval))

(define (upper-bound interval)
  (cdr interval))

;a
(define (add-interval x y)
  (make-interval(+ (lower-bound x)(lower-bound y))
                (+(upper-bound x)(upper-bound y))))

;b
(define (subtract-interval x y)
  (make-interval (- (lower-bound x)(upper-bound y))
                 (- (upper-bound x)(lower-bound y))))

;c
(define (multiply-interval x y)
  (let ((p1 (* (lower-bound x)(lower-bound y)))
        (p2 (* (lower-bound x)(upper-bound y)))
        (p3 (* (upper-bound x)(lower-bound y)))
        (p4 (* (upper-bound x)(upper-bound y))))
  (make-interval (min p1 p2 p3 p4)
                 (max p1 p2 p3 p4))))

(define (divide-interval x y)
  (multiply-interval x (make-interval (/ 1.0 (upper-bound y))
                                 (/ 1.0 (lower-bound y)))))



;testing
;a
(write "Test A")
(newLine)
(write "test case 1: (1 2) + (3 4)")
(newLine)
(write "expect: (4 . 6)")
(newLine)
(add-interval (make-interval 1 2)(make-interval 3 4))
(newLine)
(write "test case 2: (-1 2) + (1 -3)")
(newLine)
(write "expect: (0 . -1)")
(newLine)
(add-interval (make-interval -1 2)(make-interval 1 -3))
(newLine)
;b
(write "Test b")
(newLine)
(write "test case 1: (1 2) - (1 2)")
(newLine)
(write "expect: (-1 . 1)")
(newLine)
(subtract-interval (make-interval 1 2)(make-interval 1 2))
(newLine)
(write "test case 2: (-1 2) - (1 -3)")
(newLine)
(write "expect: (2 . 1)")
(newLine)
(subtract-interval (make-interval -1 2)(make-interval 1 -3))
(newLine)
;c
(write "Test c")
(newLine)
(write "test case 1: (1 2) * (1 2)")
(newLine)
(write "expect: (1 . 4)")
(newLine)
(multiply-interval (make-interval 1 2)(make-interval 1 2))
(newLine)
(write "test case 2: (-1 2) * (1 -3)")
(newLine)
(write "expect: (-6 . 3)")
(newLine)
(multiply-interval (make-interval -1 2)(make-interval 1 -3))
(newLine)
;d
(write "Test d")
(newLine)
(write "test case 1: (1 2) - (3 4)")
(newLine)
(write "expect: (0.25 . 0.666666)")
(newLine)
(divide-interval (make-interval 1 2)(make-interval 3 4))
(newLine)
(write "test case 2: (-1 2) - (1 -3)")
(newLine)
(write "expect: (-1 . 2.0)")
(newLine)
(divide-interval (make-interval -1 2)(make-interval 1 -3))
(newLine)