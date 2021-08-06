#lang racket
(require racket/trace)

;; (define (accumulate combiner null-value term a next b)

;;   )

;; (define (repeated* f n)
;;   (accumulate compose identity (const f) 0 add1 n))

(define (repeated f n)
  (if (> n 0)
      (lambda (x) ((compose (repeated f (- n 1)) f) x))
      identity))
