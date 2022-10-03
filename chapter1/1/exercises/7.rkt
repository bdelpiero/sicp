;;;; Reimplementation of good-enough

(define (good-enough? guess prev-guess)
  (< (abs (- guess prev-guess)) 
     (* guess 0.001))) ;; ver http://community.schemewiki.org/?sicp-ex-1.7 (por qué se multiplica por guess)

;; otra opcion es no agregar un argumento y revisar cuál va a ser la variación en la próxima iteración
;; (define (good-enough? guess x) 
;;   (< (abs (- (improve guess x) guess)) 
;;      (* guess .001))) 

(define (sqrt-iter guess prev-guess x)
  (if(good-enough? guess prev-guess)
     guess
     (sqrt-iter (improve guess x)
                guess
                  x)))

;; entry poit (for client code)
(define (sqrt x)
  (sqrt-iter 1.0 0 x))