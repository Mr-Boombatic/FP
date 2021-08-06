#lang racket

(require 2htdp/image)

(define lake (overlay/align "center" "center" (circle 7 "solid" "green") (ellipse 100 30 "solid" "blue")))
(define car(above/align "center" (rectangle 40 20 "solid" "gold")
                       (rectangle 80 30 "solid" "gold")
                       (beside (circle 10 "solid" "black")
                               (rectangle 30 20 "solid" "white")
                               (circle 10 "solid" "black"))))
(define door (overlay/align "right" "center" (circle 3 "solid" "yellow")
                            (rectangle 15 30 "solid" "silver")))
(define casstle (above (beside/align "bottom"
                                               (triangle 30 "solid" "red")
                                               (triangle 40 "solid" "red")
                                               (triangle 20 "solid" "red"))
                                 (rectangle 90 50 "solid" (color 77 77 77))))
even?
