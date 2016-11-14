(define (all? pred? listA)
    (cond ((null? listA) #t)
	  ((not (pred? (car listA))) #f)
	  (else (all? pred? (cdr listA)))))