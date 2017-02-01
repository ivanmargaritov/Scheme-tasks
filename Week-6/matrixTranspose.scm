;(transpose '((1 2 3) (4 5 6) (7 8 9))) -> '((1 4 7) (2 5 8) (3 6 9))

(define matrix '( (1 2 3) (4 5 6) (7 8 9)))
(define (transpose matrix)
    (if (null? (car matrix))
		'()
		(cons (map car matrix)
			  (transpose (map cdr matrix)))))