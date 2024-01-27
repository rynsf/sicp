;; recursive
(define (f n) 
  (if (< n 3) 
    n
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

(f 3)

;; iterative
(define (fi n)
  (define (f-iter a b c n)
    (if (= n 0)
      c
      (f-iter (+ a (* 2 b) (* 3 c))
              a
              b
              (- n 1))))
  (f-iter 2 1 0 n))

(fi 3)
