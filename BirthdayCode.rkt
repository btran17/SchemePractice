#lang racket

;Birthday Guessing Game

(display "Welcome to an Ice-Breaking Birthday Guessing Game!\n")

(define (screen s)
  (display s)
  (read-line))

(display "\nCard 0\n")
(display "01 03 05 07\n")
(display "09 11 13 15\n")
(display "17 19 21 23\n")
(display "25 27 29 31\n")
;(display "Enter 1 for yes; 0 for no\n")
;(screen "Do you see your birthday day in Card 0?\n")

(display "\nCard 1\n")
(display "02 03 06 07\n")
(display "10 11 14 15\n")
(display "18 19 22 23\n")
(display "26 27 30 31\n")
;(display "Enter 1 for yes; 0 for no\n")
;(screen "Do you see your birthday day in Card 1?\n")

(display "\nCard 2\n")
(display "04 05 06 07\n")
(display "12 13 14 15\n")
(display "20 21 22 23\n")
(display "28 29 30 31\n")
;(display "Enter 1 for yes; 0 for no\n")
;(screen "Do you see your birthday day in Card 2?\n")

(display "\nCard 3\n")
(display "08 09 10 11\n")
(display "12 13 14 15\n")
(display "24 25 26 27\n")
(display "28 29 30 31\n")
;(display "Enter 1 for yes; 0 for no\n")
;(screen "Do you see your birthday day in Card 3?\n")

(display "\nCard 4\n")
(display "16 17 18 19\n")
(display "20 21 22 23\n")
(display "24 25 26 27\n")
(display "28 29 30 31\n")
(display "\nEnter 1 for yes; 0 for no\n")
;(screen "Do you see your birthday day in Card 4?\n")

(display "Example Input: (day 0 1 1 1 0)\n  > 14")

(define card0 1)
(define card1 2)
(define card2 4)
(define card3 8)
(define card4 16)

(define c0 (lambda (v)
                (if (= v 1) card0
                    (* 0 0))))

(define c1 (lambda (w)
             (if (= w 1) card1
                 (* 0 0))))

(define c2 (lambda (x)
             (if (= x 1) card2
                 (* 0 0))))

(define c3 (lambda (y)
             (if (= y 1) card3
                 (* 0 0))))

(define c4 (lambda (z)
             (if (= z 1) card4
                 (* 0 0))))

(define day (lambda (v w x y z) (+ (c0 v) (c1 w) (c2 x) (c3 y) (c4 z))))