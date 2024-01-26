(define (cbrt x)
  (define (good-enough? old-guess guess)
    (< (abs (- old-guess guess)) 0.001))
  (define (square n)
    (* n n))
  (define (improve guess)
    (/ (+ 
         (/ x 
            (square guess))
         (* 2 guess))
       3))
  (define (cbrt-iter old-guess guess)
    (if (good-enough? old-guess guess)
      guess
      (cbrt-iter guess (improve guess))))
  (cbrt-iter 0.0 1.0))

(cbrt 8)
