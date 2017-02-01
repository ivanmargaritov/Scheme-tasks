;(make-set '(1 2 1 1 3 2 4 2 5)) -> '(1 2 3 4 5)
;(make-set '()) -> '()
;(make-set '("yey" "wow")) -> '("yey" "wow")
(define (member? x listA)
    (if (null? listA)
		#f
		(if (= x (car listA))
			#t
			(member? x (cdr listA)))))
	    
(define (make-set listA)
    (if (null? listA)
		'()
		(if (member? (car listA) (cdr listA))
			(make-set (cdr listA))
			(cons (car listA)
				  (make-set (cdr listA))))))