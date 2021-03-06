#lang sicp

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) nil sequence))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length sequence)
  (accumulate (lambda (x y) (+ 1 y)) 0 sequence))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (square x)
  (* x x))

(define (add7 x)
  (+ x 7))

(map square (list 1 2 3 4 5))
(map add7 (list 1 2 3 4 5))
(append (list 1 2 3) (list 4 5 6))
(append (list 7 8 9) (list 33 22 11))
(length (list 1 2 3 4 5))
(length (list 1 2 3 4 5 6 7 8 9 10))

