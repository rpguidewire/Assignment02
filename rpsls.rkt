;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname rpsls) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;;Question 4

(define (rpsls player1 player2)
(cond
  [(equal? player1 player2) 'tie]
  [(or 
    (and (symbol=? 'rock player1)
         (symbol=? 'scissors player2))
    (and (symbol=? 'rock player1)
         (symbol=? 'lizard player2))
    
    (and (symbol=? 'paper player1)
         (symbol=? 'rock player2))
    (and (symbol=? 'paper player1)
         (symbol=? 'spock player2))
    
    (and (symbol=? 'scissors player1)
         (symbol=? 'paper player2))
    (and (symbol=? 'scissors player1)
         (symbol=? 'lizard player2))
    
    (and (symbol=? 'lizard player1)
         (symbol=? 'paper player2))
    (and (symbol=? 'lizard player1)
         (symbol=? 'spock player2))
    
    (and (symbol=? 'spock player1)
         (symbol=? 'rock player2))
    (and (symbol=? 'spock player1)
         (symbol=? 'scissors player2))) 'player1]
  
  [(or 
    (and (symbol=? 'rock player1)
         (symbol=? 'paper player2))
    (and (symbol=? 'rock player1)
         (symbol=? 'spock player2))
    
    (and (symbol=? 'paper player1)
         (symbol=? 'scissors player2))
    (and (symbol=? 'paper player1)
         (symbol=? 'lizard player2))
    
    (and (symbol=? 'scissors player1)
         (symbol=? 'rock player2))
    (and (symbol=? 'scissors player1)
         (symbol=? 'spock player2))
    
    (and (symbol=? 'lizard player1)
         (symbol=? 'rock player2))
    (and (symbol=? 'lizard player1)
         (symbol=? 'scissors player2))
    
    (and (symbol=? 'spock player1)
         (symbol=? 'paper player2))
    (and (symbol=? 'spock player1)
         (symbol=? 'lizard player2))) 'player2]))



;;Tests

(check-expect (rpsls 'rock 'rock) 'tie)
(check-expect (rpsls 'paper 'paper) 'tie)
(check-expect (rpsls 'scissors 'scissors) 'tie)
(check-expect (rpsls 'lizard 'lizard) 'tie)
(check-expect (rpsls 'spock 'spock) 'tie)


(check-expect (rpsls 'rock 'paper) 'player2)
(check-expect (rpsls 'rock 'scissors) 'player1)
(check-expect (rpsls 'rock 'lizard) 'player1)
(check-expect (rpsls 'rock 'spock) 'player2)

(check-expect (rpsls 'paper 'rock) 'player1)
(check-expect (rpsls 'paper 'scissors) 'player2)
(check-expect (rpsls 'paper 'lizard) 'player2)
(check-expect (rpsls 'paper 'spock) 'player1)

(check-expect (rpsls 'scissors 'rock) 'player2)
(check-expect (rpsls 'scissors 'paper) 'player1)
(check-expect (rpsls 'scissors 'lizard) 'player1)
(check-expect (rpsls 'scissors 'spock) 'player2)

(check-expect (rpsls 'lizard 'rock) 'player2)
(check-expect (rpsls 'lizard 'paper) 'player1)
(check-expect (rpsls 'lizard 'scissors) 'player2)
(check-expect (rpsls 'lizard 'spock) 'player1)

(check-expect (rpsls 'spock 'rock) 'player1)
(check-expect (rpsls 'spock 'paper) 'player2)
(check-expect (rpsls 'spock 'scissors) 'player1)
(check-expect (rpsls 'spock 'lizard) 'player2)























