(define (take n listA)
    (if (or (= n 0) (null? listA))
	'()
	(cons (car listA) (take (- n 1) (cdr listA)))))