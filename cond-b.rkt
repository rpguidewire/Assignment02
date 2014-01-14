;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname cond-b) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;Question 1b

(define (q1b x)
  (cond 
    [(or 
      (and (number? x)(p2? x) (p1? x))
      (and (number? x)(not (p2? x)) (p3? x))) 'alfa]
    
    [(and (number? x) (p2? x) (not (p1? x)) (p3? x)) 'bravo]
    
    [(and (number? x) (p2? x) (not (p1? x)) (not (p3? x))) 'charlie]
    
    [(and (symbol? x) (equal? x 'delta)) 'echo]
    
    [(and (symbol? x) (not (equal? x 'delta))) 'delta]
    
    [(not (or (symbol? x)
              (number? x))) 'foxtrot]))