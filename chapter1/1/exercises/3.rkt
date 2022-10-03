#lang sicp

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-two-larger-squared x y z)
  (if (or (> x y) (> x z)
      (if (> y z) (sum-of-squares x y)
          (sum-of-squares x z)))
      (sum-of-squares y z)))


(sum-of-two-larger-squared 2 3 4)

;; cleaner version from solutions. avoids nested if statement:

(define (sumOfLargestTwoSquared x y z)
  (cond ((and (<= x y) (<= x z)) (sum-of-squares y z))
        ((and (<= y x) (<= y z)) (sum-of-squares x z)) 
        (else (sum-of-squares x y))))