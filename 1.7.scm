(define (sqrt x)
  (define (average a b)
    (/ (+ a b) 2))
  (define (good-enough? old-guess guess)
    (< (abs (- old-guess guess)) 0.0001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter old-guess guess)
    (if (good-enough? old-guess guess)
      guess
      (sqrt-iter guess (improve guess))))
  (sqrt-iter 0.0 1.0))

(sqrt (expt 10 100))
