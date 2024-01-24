;; If the interpreter follows applicative order, the procedure call to p in the expression (test 0 (p)) will recurse infinitely and the interpreter will be stuck in an endless loop.

;; If the interpreter follows normal-order evalution it will first expand the expression and then evaluate.
;; (test 0 (p))
;; will expand to
;; (if (= 0 0) 0 (p)) 
;; the interpreter will now evalute returning 0 as output.

