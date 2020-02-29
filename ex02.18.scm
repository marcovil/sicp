(define (reverse l)
  (define (reverse-iter l newlist)
    (if (null? l)
	newlist
	(reverse-iter (cdr l) (cons (car l) newlist))))
  (reverse-iter l '()))

(reverse (list 1 4 9 16 25))

(define (rec-reverse l)
  (if (null? (cdr l))
      l
      (append (reverse (cdr l)) (list (car l)))))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(rec-reverse (list 0 2 3 4 23))
