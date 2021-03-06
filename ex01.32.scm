#lang sicp

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (combiner (term a) result))))
  (iter a null-value))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (sum-iter term a next b)
  (accumulate-iter + 0 term a next b))

(define (product-iter term a next b)
  (accumulate-iter * 1 term a next b))

(define (square x)
  (* x x))

(define (inc x)
  (+ x 1))

(define (identity x)
  x)

(define (factorial n)
  (product identity 1 inc n))

(define (sum-squares a b)
  (sum square a inc b))

(define (factorial-iter n)
  (product-iter identity 1 inc n))

(define (sum-squares-iter a b)
  (sum-iter square a inc b))

(sum-squares 1 23)
4324
(sum-squares-iter 1 23)

(factorial 5)
120
(factorial-iter 5)