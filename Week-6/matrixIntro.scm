(define matrix '( (1 2 3) (4 5 6) (7 8 9)))
(cadr matrix) ;second row
(define (list-ref listA n)
    (cond ((> n (- (length listA) 1)) (display "index out of range"))
	  ((= n 0) (car listA))
	  (else (list-ref (cdr listA) (- n 1)))))
  
;(define (get-second-col matrix)
;   (if (null? matrix)
;	'()
;	(cons ((car (cdr (car matrix)))
;	      (get-second-col (cdr matrix))))))

(define (get-nth-row matrix n)
    (list-ref matrix n))

(define (get-nth-col matrix n)
    (if (null? matrix)
	'()
	(cons (list-ref (car matrix) n)
	      (get-nth-col (cdr matrix) n))))
;a second way
(define (get-nth-col-map matrix n)
  (map (lambda (row) (list-ref row n)) matrix))
 
(define (diagonal matrix)
    (define (helper matrix i)
	(if (= i (length matrix))
	    '()
	    (cons (list-ref (get-nth-row matrix i) i)
		  (helper matrix (+ i 1)))))
    (helper matrix 0))
