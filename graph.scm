(define graph '((1 2 4 5) (2 3 1) (3 2 5 4) (4 4 2) (5 3 1)))

(define (findVertices graph)
  (if (null? graph)
      '()
      (list (map car graph))))
      
(define (neighbours graph vertex)
  (if (null? graph)
      '()
      (if (= (caar graph) vertex)
	  (cdar graph)
	  (neighbours (cdr graph) vertex))))
	
(define (edgesHelper graph)
  (if (null? graph)
    '()
    (map (lambda (n) (cons (car graph) n)) (cdr graph))))

(define (edges graph)
  (if (null? graph)
    '()
    (cons (edgesHelper (car graph))
	  (edges (cdr graph)))))
	
(define (out-degree graph vertex)
  (if (null? graph)
    0
    (if (= (caar graph) vertex)
	(length (cdar graph))
	(out-degree (cdr graph) vertex))))
	
