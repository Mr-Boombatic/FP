#lang racket

(define (exponentiation a n)
  (cond (( = n 0) 1)
        (( > n 0) (* a (exponentiation a ( - n 1))))))



(define (exp-iter n i)
  (define (exponentiation-iter i p)
    (if ( > i 0)
        (exponentiation-iter ( - i 1)  (* n p))
        p))
  (exponentiation-iter i 1))

(define (expon-iter a n p )
  (if ( > n 0)
      (if (even? n)
          (expon-iter (* a a) (/ n 2) p)
          (expon-iter a (- n 1) (* a p)))
      p))

(define (exp-iter-log a n) (expon-iter a n 1))

(define (exp-log a n)
  (if (> n 0)
      (if (even? n)
          (exp-log (* a a) (/ n 2))
          (* a (exp-log a (- n 1))))
      1))

