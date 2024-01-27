;; It was harder to figure out what is it that the question wants, than actually solving it.
;; This procedure computes "elements of Pascal's triangle" provided the coorinated to the element.

(define (pascal x y)
  (cond ((or (= x 0)
             (= x y)) 1)
        (else (+ (pascal x (- y 1))
                 (pascal (- x 1) (- y 1))))))

(pascal 2 4)
