(define matrix '((1 2 6) (3 8 9) (10 14 11)))

(define (divByThree num)
    (if (= (remainder num 3) 0)
	#t
	#f))

(define (helper listA)
  (if (null? listA)
      #f
      (if (divByThree (car listA))
	  #t
	  (helper (cdr listA)))))
	
    

(define (checkMatrix matrix)
    (if (null? matrix)	
	#t
	(if (not (helper (car matrix)))
	    #f
	    (checkMatrix (cdr matrix)))))
	    