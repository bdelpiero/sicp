;; recursive implementation of pascal's triangle
;; the difficult part was to understand the expected return value
;; the exercise is to write a procedure that comptes elements of the triangle (given row and column)

(define (pascal row col)
  (cond ((= col 0) 1)
        ((= col row) 1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))