;;;; Implementation of square root by Newton's method of approximation
#lang sicp

;;; Helper functions

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))


;;; Implementation (this functions are within the lex env of sqrt so they can't be called by client)

(define (sqrt x)
  (define (average x y)
    (/ (+ x y) 2))
  (define (improve guess x)
    (average guess (/ x guess)))
  (define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001)) ; predetermined tolerance of 0.001
  (define (sqrt-iter guess x)
    (if(good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                    x)))
  (sqrt-iter 1.0 x))

(sqrt 9)
