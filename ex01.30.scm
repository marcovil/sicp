#lang sicp

(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

(define (square x)
  (* x x))

(define (inc x)
  (+ x 1))

(define (sum-squares a b)
  (sum square a inc b))

(sum-squares 1 23)

