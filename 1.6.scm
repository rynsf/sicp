;; What distinguishes if, which is a special form, from regular procedure is the way its arguments are evaluated.
;; In a regular function all the sub-expressions are evaluated and then the procedure is applied. 
;; While in if, the predicate is evaluate first the value of which defines what will be evaluate next.
;; if the value of the predicate is true then the consequent expresion is evaluated else the alternate expression is evaluated.

;; In the definition of sqrt-iter with new-if, new-if being a procedure, all the sub-expression of it will be evaluate including the recusive call to sqrt-iter itself, irrespective of weather the predicate was true or false.
;; This will lead the procedure to recurse infinitely without ever producing a value.
