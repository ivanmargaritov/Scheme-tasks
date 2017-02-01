;(list-rem 2 '(19 28 64 10)) -> '(19 28 10)
;(list-rem 2 '()) -> '()
;(list-rem 10 '(1 2 3)) -> '(1 2 3)
(define (list-rem index listA)
    (if (null? listA)
		'()
		(if (> index (length listA))
			listA
			(if (= index 0)
				(cdr listA)
				(append (list (car listA)) (list-rem (- index 1) (cdr listA)))))))
				;(cons (car listA) (list-rem (- index 1) (cdr listA)))))))           works this way too