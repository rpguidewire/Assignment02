;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname sequence) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;QUESTION 2A

;; arith-seq-cond?: Num Num Num -> Boolean

;; Purpose: The Purpose of this function is to take in three Numbers, x y and z and return true if the numbers can 
;; be arranged in an arithmetic sequence, else return false. 

;;Example: 
(check-expect (arith-seq-cond? 4 19 4) false)
(check-expect (arith-seq-cond? 3 3 18) false)
(check-expect (arith-seq-cond? 12 9 9) false)
(check-expect (arith-seq-cond? 0 0 0) true)
(check-expect (arith-seq-cond? 4 5 6) true)
(check-expect (arith-seq-cond? 100 99 98) true)

;;Function Definition 
(define (arith-seq-cond? x y z)
  (cond 
    [(<= x y)
     (cond 
       [(<= x z) 
        (cond [(<= y z) (diff x y z)]
              [else (diff x z y)])]
       [(>= x z)
        (cond [(<= y z) (diff y x z)]
              [else (diff z x y)])])]
    
    [(<= y x)
     (cond
       [(<= y z)
        (cond
          [(<= x z) (diff y x z)]
          [else (diff y z x)])]
       [(>= y z)
        (cond 
          [( >= x z) (diff z y x)]
          [else (diff z y x)])])]
    
    [(<= z x)
     (cond
       [( <= z y)
        (cond 
          [(<= x y) (diff z x y)]
          [else (diff z y x)])]
       [(>= z y)
        (cond
          [(<= x y) (diff x z y)]
          [else (diff z y x)])])]))

;;Tests 

(check-expect (arith-seq-cond? 14 12 4) false)
(check-expect (arith-seq-cond? 14 4 12) false)
(check-expect (arith-seq-cond? 12 14 4) false)
(check-expect (arith-seq-cond? 12 4 14) false)
(check-expect (arith-seq-cond? 4 12 14) false)
(check-expect (arith-seq-cond? 4 14 12) false)

(check-expect (arith-seq-cond? 44 14 34) false)
(check-expect (arith-seq-cond? 44 34 14) false)
(check-expect (arith-seq-cond? 34 14 44) false)
(check-expect (arith-seq-cond? 34 44 14) false)
(check-expect (arith-seq-cond? 14 34 44) false)
(check-expect (arith-seq-cond? 14 44 34) false)

(check-expect (arith-seq-cond? 4 4 4) true)
(check-expect (arith-seq-cond? 24 14 4) true)
(check-expect (arith-seq-cond? 24 4 14) true)
(check-expect (arith-seq-cond? 14 4 24) true)


(check-expect (arith-seq-cond? 13 26 0) true)
(check-expect (arith-seq-cond? 13 0 26) true)
(check-expect (arith-seq-cond? 26 0 13) true)
(check-expect (arith-seq-cond? 26 13 0) true)
(check-expect (arith-seq-cond? 0 26 13) true)
(check-expect (arith-seq-cond? 0 13 26) true)

(check-expect (arith-seq-cond? 1.6 1.2 1.4) true)
(check-expect (arith-seq-cond? 1.2 1.6 1.4) true)
(check-expect (arith-seq-cond? 1.4 1.2 1.6) true)


;;HELPER FUNCTION 

;;diff: Num Num Num -> Boolean 

;; The purpose of this function is to check if the numbers entered, x y and z, in order from least to greatest, differ by the same amount.  
;; If they do return true, else return false. 

;;Example 
(check-expect (arith-seq-cond? 1.2 1.4  1.6) true)
(check-expect (arith-seq-cond? 4 5 6) true)
(check-expect (arith-seq-cond? 9 9 9) true)
(check-expect (arith-seq-cond? 37 39 45) false)

;;Function Definition
(define (diff x y z)
  (cond 
    [(= (- z y)(- y x)) true]
    [else false]))

;;Tests 

(check-expect (arith-seq-cond? 4.5 8.9 10.0) false)
(check-expect (arith-seq-cond? 44 55 66) true)
(check-expect (arith-seq-cond? 1 2 3) true)
(check-expect (arith-seq-cond? 2 4 6) true)
(check-expect (arith-seq-cond? 23 45 89) false)
(check-expect (arith-seq-cond? 100 299 399) false)
(check-expect (arith-seq-cond? 100 200 399) false)

;;QUESTION 2B 






























