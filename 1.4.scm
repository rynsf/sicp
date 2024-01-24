;; The function adds a and b if b is positive else it subtracts b from a 
;; This leads to the addition of a and the absolute value of b.

;; Something to notice here is that the first element of the list in the function body is a compound expression.
;; Our evaluation model tells that we first evaluate all sub-expressions and then apply the procedure that is the value of the left most sub-expression to the rest of the sub-expressions.

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b ))

(a-plus-abs-b 1 1) ; => 2
(a-plus-abs-b 1 -1) ; => 2
