#lang racket

(define (min_max lis) (list (minimum lis) (maximum lis)))

(define (maximum lst)
     (if (null? (cdr lst)) 
         (car lst) 
         (if (< (car lst) (maximum (cdr lst)))  
             (maximum (cdr lst)) 
             (car lst)
         )
    )
 )
	
(define (minimum lst)
     (if (null? (cdr lst)) 
         (car lst) 
         (if (> (car lst) (minimum (cdr lst)))  
             (minimum (cdr lst)) 
             (car lst)
         )
    )
)

(min_max '(-1 0 10 17 4 -3 5))
; (-3 17)