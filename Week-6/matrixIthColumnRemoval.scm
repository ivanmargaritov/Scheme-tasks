;(remove-ith-col 1 '((1 2 3) (4 5 6) (7 8 9))) -> '((1 3) (4 6) (7 9))

(define matrix '( (1 2 3) (4 5 6) (7 8 9)))
	  
(define (list-rem index listA)
    (if (null? listA)
		'()
		(if (> index (length listA))
			listA
			(if (= index 0)
				(cdr listA)
				(append (list (car listA)) (list-rem (- index 1) (cdr listA)))))))
		
(define (remove-ith-col n matrix)
    (if (null? matrix)
		'()
		(cons (list-rem n (car matrix))
			  (remove-ith-col n (cdr matrix)))))