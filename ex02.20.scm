(define (same-parity x . w)
  (define (same-parity-list x list newlist)
    (if (null? list)
	(cons x (reverse newlist))
	(if (= (remainder x 2) (remainder (car list) 2))
	    (same-parity-list x (cdr list) (cons (car list) newlist))
	    (same-parity-list x (cdr list) newlist))))
  (if (null? w)
      (cons x '())
      (same-parity-list x w '())))

(define (reverse l)
  (define (reverse-iter l newlist)
    (if (null? l)
	newlist
	(reverse-iter (cdr l) (cons (car l) newlist))))
  (reverse-iter l '()))

(reverse (list 1 4 9 16 25))
  
(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
(same-parity 1)
(same-parity 2)
(same-parity 1 2)
