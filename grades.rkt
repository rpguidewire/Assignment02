;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname grades) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;Question 3A

;;participation-mark: Num Num Num -> Num

;;The purpose of this function is to take in the total number of questions asked, total, 
;; the number of questions answered correctly, correct and the number of answers which were wrong, wrong, 
;;and calculate the final paricipation mark.

;;Examples 
(check-expect (participation-mark 40 10 20) (* 100 (/ 2 3))) ;; 66% 40/60
(check-expect (participation-mark 80 40 15) (* 100 (/ 19 24))) ;; 79.166% 
(check-expect (participation-mark 32 24 0) 100)

;;Function Definition 
(define top75 0.75)
(define (participation-mark total correct wrong)
  (cond 
    [(>= (+ (* 2 correct) wrong)
         (* 2 (* top75 total))) 100]
    [else ( * 100 (/ (+ (* 2 correct) wrong) (* 2 (* top75 total))))]))

;;Tests
(check-expect (participation-mark 140 120 18) 100)
(check-expect (participation-mark 90 10 23)  (/ 860 27))
(check-expect (participation-mark 48 21 20) (* 100 (/ 31 36)))
(check-expect (participation-mark 78 0 20) (* 100 (/ 20 117)))
(check-expect (participation-mark 100 80 3) 100)
(check-expect (participation-mark 100 90 3) 100)
(check-expect (participation-mark 100 25 25) 50)

;;Question 3B
;;final-cs135-grade: Num Num Num Num Num -> Num

;; The purpose of this function is to take in five numbers which represent grades on each exam, final
;; mid1, mid2; the assignment, assign and the participation, parti, and calculate the final grade in the 
;; class based on those numbers

(define (final-cs135-grade final m1 m2 assign parti)
  (cond
    [(or (< assign 50)
         (< (weightedexamaverage final m1 m2) 50)) 
     (cond
       [(<= 46 (weighted-average final m1 m2 assign parti)) 46]
       [else (weighted-average final m1 m2 assign parti)])]
    [else (weighted-average final m1 m2 assign parti)]))


(define finalper 0.45)
(define mid1per 0.10)
(define mid2per 0.20)
(define assignper 0.20)
(define partiper 0.05)

(define (weighted-average final midterm1 midterm2 assign parti)
   (+ (* finalper final) 
      (* mid1per midterm1)
      (* mid2per midterm2)
      (* assignper assign)
      (* partiper parti)))

(define (weightedexamaverage final midterm1 midterm2)
   (+ (* finalper final) 
      (* mid1per midterm1)
      (* mid2per midterm2)))
 




















