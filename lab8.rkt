#lang racket

(define empty-board '())

(define (adjoin-position new-row rest-of-queens)
  (cons new-row rest-of-queens))

(define (safe? k position)
  (define (queens-safe? queen-count rest-rows)
    (define (queen-safe? col row)
      (let ((last-col k) (last-row (car position)))
        (and (not (= last-row row))
             (not (= (abs (- last-row row))
                     (abs (- last-col col)))))))
    (cond ((null? rest-rows) true)
          ((queen-safe? queen-count (car rest-rows))
             (queens-safe? (- queen-count 1) (cdr rest-rows)))
          (else false)))
  (queens-safe? (- k 1) (cdr position)))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (stream-cons '() empty-stream)
        (stream-filter (λ (positions) (safe? k positions))
        (for*/stream ([rest-of-queens (queen-cols (- k 1))]
                    [new-row (in-range 1 (+ board-size 1))])
          (adjoin-position new-row rest-of-queens)))))
  (queen-cols board-size))

