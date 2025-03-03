(set-logic ALL)

;; Define a function for power operation
(define-fun-rec power ((base Int) (exp Int)) Int
  (ite (<= exp 0)
       1
       (* base (power base (- exp 1)))))

(declare-const x Int)
(assert (= (mod (power 4433 x) 6933) 3818))
(check-sat)
(get-model)