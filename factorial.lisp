#!/usr/local/bin/sbcl --script

(defun fac(n)
	(if (<= n 1)
    1
    (* n (fac (- n 1)))
  )
)

(defparameter TESTN 1)
(defun compare(actual expected)
	(format t "Test ~A. Result: ~A --- ~A~%"
		TESTN
		actual
		(if (= actual expected) 'OK 'ERROR)
	)
	(setf TESTN (+ TESTN 1))
)

(defun test()
	(compare (fac 5) 120)
	(compare (fac 0) 1)
	(compare (fac 1) 1)
	(compare (fac 6) 720)
)

(test)

