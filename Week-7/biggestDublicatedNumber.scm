(define (member? x listA)
    (if (null? listA)
	#f
	(if (= x (car listA))
	    #t
	    (member? x (cdr listA)))))
    
(define (duplicates-in listA)
    (if (null? listA)
	'()
	( if (member? (car listA) (cdr listA))
	    (cons (car listA) 
		  (duplicates-in (cdr listA)))
	    (duplicates-in (cdr listA)))))
	    
(define (max-duplicate-in listA)
    (if (null? list)
	#f
	(apply max (duplicates-in listA))))
   
(define (filterNumbers listA)
    (filter (lambda (element) 
	      (number? element))
	    listA))

(define (max-duplicates-from lol)
    (map (lambda (sublist)
	(filterNumbers(max-duplicates-in sublist)))
	 lol))
	 
(define (maxDuplicate listA)
    (apply max (max-duplicate-from lol)))
    
    ;Õ≈ –¿¡Œ“»