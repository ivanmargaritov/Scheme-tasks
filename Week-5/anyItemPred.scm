(define (any? pred? listA)
    (cond ((null? listA) #f)
          ((pred? (car listA)) #t)
          (else (any? pred? (cdr listA)))))