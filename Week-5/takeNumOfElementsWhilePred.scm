(define (takeWhile pred? listA)
    (if (or (null? listA) (not (pred? (car listA))))
	'()
	(cons (car listA) (takeWhile pred? (cdr listA)))))