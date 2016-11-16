(define (accumulate listA func res)
    (if (null? listA)
	  res
	  (accumulate (cdr listA) func (func res (car listA)))))
    
(define (interval from to)
    (if (> from to)
	'()
	(cons from (interval (+ from 1) to))))
	
(define (meetTwice? f g a b)
    (> 
	(accumulate 
		(interval a b) 
		(lambda (res x) 
		    (if (= (f x) (g x))
			(+ 1 res)
			 res))
		0)
	  1))
	  
	  