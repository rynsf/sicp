(define (sum-square x y) 
  (+ (* x x) (* y y)))

(define (sum-square-greater x y z)
  (cond ((and (< x y) (< x z)) (sum-square y z))
        ((and (< y x) (< y z)) (sum-square x z))
        ((and (< z x) (< z y)) (sum-square x y))))

(sum-square-greater 1 2 3) ; => 13
