;(subject-helper 84221 '((84222 "Being Creative") (84221 "Not Really") (99322 "Oh Well")))
;-> "[HOMEWORK] 84221 Not Really"
(define listA '( (81277 "Ivan") (81264 "Niki") (81272 "Denica") ))

(define (subject-helper f-num listA)
    (if (null? listA)
		(display "The list is empty or there is no such faculty number")
		(if (= f-num (car (car listA)))
			(and 
				(display "[HOMEWORK] ")
				(display (caar listA))
				(display " ")
					(cadar listA))
					(subject-helper f-num (cdr listA)))))