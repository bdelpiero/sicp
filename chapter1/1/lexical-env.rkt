;;; pp 27 a 30: lexical env, scop, etc. using lexical env, we can simplity the procedures signature
;;; (in the example, we don't need to pass x as a parameter to all methods)

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001)) ; predetermined tolerance of 0.001
  (define (sqrt-iter guess)
    (if(good-enough? guess)
      guess
      (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))

(sqrt 9)

;; pp 33-34: otro buen ejemplo. en vez de pasar una variable `max-count` (que nunca va a cambiar)
;; a `iter`, aprovecha el lexical environment y define iter dentro de factorial (que, ademas, tiene mas sentido como API) 

(define (factorial n)
  (define (iter product counter)
    (if (> counter n)
      product
      (iter (* counter product)
            (+ counter 1))))
  (iter 1 1))
