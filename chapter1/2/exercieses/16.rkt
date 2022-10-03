;; couldnt't solve by myself

;; hints:
;; 1) (b^n/2)^2 = (b^2)^n/2 ; thats why, if even: we square b and devide n by 2
;; 2) a (which should be returned at the end of the procedure) 
;;    should be a number such that the product ab^n is unchanged from state to state

;; i approached it the wrong way. i assumes `a` was an accumulator, 
;; and thus should be transformed at every invocation

(define (expt-iter b n a)
   (cond ((= n 0) a)
         ((even? n) (expt-iter (square b) (/ n 2) a))
         (else (expt-iter  b (- n 1) (* a b)))))