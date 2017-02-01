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
	
;(in-degree vertex graph) - return the number of vertices that "point" to a given vertex
(define (in-degree vertex graph)
  (fold-left + 0 (map (lambda (lst) (length (filter (lambda (x) (equal? vertex x)) (cdr lst)))) graph)))

;(in-degree vertex graph) - same as above but better looking
(define (in-degree* vertex graph)
  (define (vertex-occurences lst)
    (length (filter (lambda (v) (equal? vertex v)) (cdr lst))))
  (define (vertex-occurences-all graph) ;the 'graph' used here is NOT the graph from above. This is a local binding to the vertex-occurences-all function.
    (map vertex-occurences graph))
  (fold-left + 0 (vertex-occurences-all graph))) ;the 'graph' used here IS the graph from the function definition.

;(subgraph? graph1 graph2) - predicate that checks whether graph2 contains graph1
(define (subgraph? graph1 graph2)
  (let* ([first-edges (edges graph1)]
         [second-edges (edges graph2)]
         [all? (lambda (p xs) (fold-left (lambda (acc next) (and acc next)) #t (map p xs)))]
         [subset? (lambda (xs ys) (all? (lambda (x) (member x ys)) xs))])
    (subset? first-edges second-edges)))
