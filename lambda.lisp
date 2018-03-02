;;
;; Prelude
;;

;; Functions in Lisp are defined like so:
(defun myfun (a) (+ a 2))

;; We can now call 'myfun':
(myfun 4) ;; 6

;; Lambdas are defined by the syntax (lambda (arguments) body)
(lambda (a) (+ a 2))

;; Lambdas should be called with the funcall function
(funcall (lambda (a) (+ a 2)) 4) ;; 6

;;
;; Exercises
;;

;; Exercise 1
;; Write a function 'sumprint' that takes two parameters
;; The function should sum the parameters and write the result
(defun sumprint (a b) (write(+ a b)))

;; Exercise 2
;; Call the 'sumprint' function with 7 and 3. What happens?
(sumprint 7 3)

;; Exercise 3
;; Call the 'sumprint' function with 7 and "a". What happens?
;;(sumprint 7 "a") ;; "a" is not a number.

;; Exercise 4
;; Call this lambda in the same line!
;; (lambda (a b) (+ a b))
(funcall (lambda (a b) (+ a b)) 4 2)

;; Exercise 5
;; Write a function that returns the lambda below
(defun lambda_return () (lambda (a) (+ a 3)))
(funcall (lambda_return) 3)

;; Exercise 6
;; Write a function that returns a lambda that is run twice on some input.
;; If you had a function in Java (f) this would be written: f(f(4))
(defun lambdaDouble () (lambda (a) (+ a 2) ))
(funcall (lambdaDouble) (funcall (lambdaDouble) 2))

;; Exercise 7
;; Write a function 'that takes one number as a parameter
;; If the number is 2 write "day is gonna be the day", else write something
;; similarly hilarious
(defun 2day (a) (if (equal a "day")
    (write "Day is gonna be the day") 
    (write "not today"))
)

(2day 2)
(2day "day")