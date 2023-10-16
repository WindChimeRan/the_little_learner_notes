#lang racket
(require malt)
(define pie 3.14)
(define a-radius 8.4)
; (define an-area
;   (* pie
;     (* a-radius a-radius)))

; an-area
((lambda (r)
   (* pie
      (* r r))) a-radius)

(define area-of-circle
  (lambda (r)
    (* pie
       (* r r))))
(area-of-circle a-radius)

(define abs
  (lambda (x)
    (cond
      ((< x 0) (- 0 x))
      (else x))))
(abs -3)

(define remainder
  (lambda (x y)
    (cond
      ((< x y) x)
      (else (remainder (- x y) y)))))
(remainder 13 4)