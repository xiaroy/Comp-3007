;Name:Roy Xia
;Student Number:101009419

(define (p)(p))
(define (test x y)
  (if (= x 0)
      x
      y))

(test 0 (p))

;q5a
;in R5S5 (applicative) the behaviour of the code gets stuck in an infinite loop this is because of the simplifying calling order and because p is not yet defined the 0 will never get outputed as given arguments are evaluated before being bound to a variable.

;q5b
;in lang lazy (normal order) the behavior of the code outputs the 0 this is because of the step by step calling order. In which arugments are not called (delayed after) unless needed therefore the p would never be evaluated.