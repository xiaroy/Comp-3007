;Name:Roy Xia
;Student Number: 101009419
;Question 1

(define (makelist)
  (define LISTS '())


  (define (size)
    (define (size-iter L1 count)
      (if (null? L1) count
          (size-iter (cdr L1) (+ count 1))))
    (size-iter LISTS 0))

  
  (define (print) LISTS)

  (define (get i)
    (define (get-element items n)
      (if (= n 0)
        (car items)
        (get-element (cdr items) (- n 1))))
    (get-element LISTS i))
  
  (define (set i x)
    (cond ((= i 0) (set! LISTS (cons x (cdr LISTS))))
          (else (set-iter LISTS '() 0 i x))))

  
  (define (set-iter l1 l2 count index x)
    (if (= count index) (set! LISTS (append (append l2 (cons x '())) (cdr l1)))
        (set-iter (cdr l1) (append l2 (list (car l1))) (+ count 1) index x)))

  
  (define (remove i)
    (cond ((= i 0) (set! LISTS (cdr LISTS))) 
          (else (remove-iter LISTS '() 0 i))))

  
  (define (remove-iter l1 l2 count i)
    (if (= count i) (set! LISTS (append l2 (cdr l1)))
        (remove-iter (cdr l1) (append l2 (list (car l1))) (+ count 1) i)
        ))

  

  
  (define (add i x)
    (cond ((null? LISTS) (set! LISTS (cons x '())))          
        (else
         (cond ((= i 0) (set! LISTS (cons x LISTS))) 
               ((= i (size)) (set! LISTS (append LISTS (list x)))) 
               (else (add-iter LISTS '() 0 i x))))))

  
  (define (add-iter l1 l2 n i x)
    (if (= n i) (set! LISTS (append (append l2 (cons x '())) l1))
        (add-iter (cdr l1) (append l2 (list (car l1))) (+ n 1) i x)))

  (define (dispatch method)
    (cond ((eq? method 'size) size)
          ((eq? method 'get) get)
          ((eq? method 'set) set)
          ((eq? method 'add) add)          
          ((eq? method 'remove) remove)
          ((eq? method 'print) print)         
      (else (lambda() (display "wrong try again")(display method)(newline)))))
  dispatch)


;Given Test Code

(define L1 (makelist))
(define L2 (makelist))
(display "L1: ")((L1 'print)) ; prints => L1: ()

(write "should print L1");
(newline);
 
(display "L2: ")((L2 'print)) ; prints => L2: ()

(write "should print L2");
(newline);

((L1 'add) 0 'a)
((L1 'add) 1 'b)
((L1 'add) 2 'c)
((L1 'add) 3 'd)
(display "L1: ")((L1 'print)) ; prints => L1: (a b c d)
(write "should print (a b c d)");
(newline);
((L2 'add) 0 ((L1 'get) 2))
((L1 'set) 2 'x)
((L2 'add) 1 'z)
((L1 'remove) 1)
((L2 'add) 1 'y)
((L1 'add) 0 1)
(display "L1: ")((L1 'print)) ; prints => L1: (1 a x d)
(write "should print (1 a x d)");
(newline);
(display "L2: ")((L2 'print)) ; prints => L2: (c y z)
(write "should print (c y z)");
(newline);
(display "size of L1: ")(display ((L1 'size)))(newline) ; prints => size of L1: 4
(write "should print 4");
(newline);
(display "size of L2: ")(display ((L2 'size)))(newline)  ; prints => size of L2: 3
(write "should print 3");
(newline);

