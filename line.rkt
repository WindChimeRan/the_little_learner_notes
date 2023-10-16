#lang racket
(require malt)

(define m (tensor (tensor 1.0 3.1 2.9)
        (tensor 2.8 -6.34 0.98)))

(define shape
    (lambda (t)
        (cond
            ((scalar? t) (list))
            (else (cons (tlen t) (shape (tref t 0)))))))
(shape m)