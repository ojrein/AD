#lang racket
(define (square x)
  (* x x))

;(define (sqrt x)
;  (sqrt-iter 1.0 (improve 1 x) x))

;(define (sqrt-iter prev-guess guess x)
  
;  (if (good-enough? prev-guess guess x)
;      guess
;      (sqrt-iter guess (improve guess x)
;                 x)))

;(define (good-enough? prev-guess guess x)
  
;  (display "good-enough? prev-guess=")
;  (display prev-guess)
;  (display " guess=")
;  (display guess)

;  (define diff (- guess prev-guess))
;  (display " diff=")
;  (display diff)

;  (define good (< (abs diff) 0.01))
;  (display " good=")
;  (if good
;      (display "true")
;      (display "false"))
;  (displayln "")
  
;  good)

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
 
  (if (good-enough2 guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (good-enough2 guess x)
  
  (display "good-enough2 guess=")
  (display guess)
  (display " x=")
  (display x)
  (displayln "")
  
  ;(define good (< (percent-difference guess x) 0.01))

  (< (percent-difference (square guess) x) 0.01))

  (define (percent-difference a b)
    (* (/ (abs (- a b)) a) 100))
 
;  (display " good=")
;  (if good
;      (display "true")
;      (display "false"))
;  (displayln "")
;  
;  good)

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(sqrt 0.000000365)
;(displayln 2)
;(display 2)


;(define result (sqrt 0.02))

;(displayln result)
;(displayln (square result))