;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname cond-a) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;; Question 1A

(define (q1a x)
  (cond
    [(and (p1? x) (not (p2? x))) (f3 x)]
    [(and (p1? x) (p2? x)) (f1 x)]
    [(or 
     (and (not (p1? x)) (p2? x))
     (and (p1? x) (p3? x))) (f2 x)]
    [(and (not (p1? x)) (not (p2? x))) x]))

