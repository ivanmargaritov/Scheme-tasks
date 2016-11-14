(define (make-tree root left right)
    (list root left right))
    
(define (root tree)
    (car tree))
    
(define (leftSubtree tree)
      (cadr tree))
      
(define (rightSubtree tree)
      (caddr tree))
      
(define (empty? tree)
      (null? tree))
      
(define (is-leaf? tree)
      (and (not (empty? tree))
	   (and 
	      (empty? (leftSubtree tree))
	      (empty? (rightSubtree tree)))))
  
(define (member? x tree)
      (if (empty? tree)
	  #f
	  (if (= (root tree) x)
	      #t
	      (or (member? (leftSubtree tree))
		  (member? (rightSubtree tree))))))
		  
;another way of the function	  
(define (member-tree? x tree)
    (cond ((empty? tree) #f)
          ((= x (root tree)) #t)
          (else (or
                    (member-tree? x (leftSubtree tree))
                    (member-tree? x (rightSubtree tree))))))

(define (member-leaf? x tree)
      (if (empty? tree)
	  #f
	  (if (and (= (root tree) x)
		   (is-leaf? tree))
	      #t
	      (or (member-leaf? x (leftSubtree tree))
		  (member-leaf? x (rightSubtree tree))))))
	  
(define (path-from-to first second tree)
      (if (empty? tree)
	  #f
	  (if (= (root tree) first)
	      (member? second tree)
	      (or (path-from-to first second (leftSubtree tree))
		  (path-from-to first second (rightSubtree tree))))))