#lang racket

(define (apend a b)
  (foldr cons b a))
(define (apend-multi . a)
  (foldr apend '() a))
