;; recursive implementation
(define (f n)
  (if (< n 3 ) 
    (n)
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

;; iterative implementation
;; (couldn't solve it by myself)
;; great explanation: https://stackoverflow.com/questions/2365993/no-idea-how-to-solve-sicp-exercise-1-11
(define (f n) 
  (define (f-i a b c count) 
    (cond ((< n 3) n) 
          ((<= count 0) a) 
          (else (f-i (+ a (* 2 b) (* 3 c)) a b (- count 1))))) 
  (f-i 2 1 0 (- n 2))) ; start from the ground up (the values that are smaller than 3)