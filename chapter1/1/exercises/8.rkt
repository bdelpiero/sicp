;;;; Implementation of cube root
#lang sicp

;;; helper functions

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (cube x)
  (* x x x))

;;; Implementation

(define (cube-root x)
  (define (improve guess x)
    (/ (+
        (/ x (square guess))
        (* 2 guess))
       3))
  (define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001)) ; predetermined tolerance of 0.001
  (define (cube-root-iter guess x)
    (if(good-enough? guess x)
      guess
      (cube-root-iter (improve guess x)
                    x)))
  (cube-root-iter 1.0 x))

(cube-root 27)