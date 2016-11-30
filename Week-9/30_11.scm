(define (accumulate term op nullValue a next b)
    (if (> a b)
	nullValue
	(op (term a) (accumulate term op nullValue (next a) next b))))
	
(define (next a) (+ a 1))

(define (bullshit a m n)
    (define (singleMult n)
	(/  (accumulate (lambda (x) (+ a x)) * 1 1 next m)
	    (accumulate (lambda (x) (+ n x)) * 1 1 next n)))
    (accumulate singleMult + 0 1 next n))