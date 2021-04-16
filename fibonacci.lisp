#!/usr/local/bin/sbcl --script

(defun fib(n)
  (if (<= n 1)
    1
    (+ (fib (- n 1)) (fib (- n 2)))
  )
)

(format t "~A~%" (fib 5))