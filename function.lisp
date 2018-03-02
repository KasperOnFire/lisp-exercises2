;;
;; Prelude
;;

;; Define a function 'f'
(defun f (a) (+ a a))

;; Call the function f
(f 10)

;; Truth is written as T
T

;; False is written as nil (the empty list)
nil

;; Equality is made like so
(equal 1 2) ;; nil = false

;; Lists are made like so
(list 1 2)

;; - or using cons:
(cons 1 (cons 2 nil))

;; Remember that if statements are made like so
;; if condition then else
(if (equal (list 1 2) (list 1 2)) T nil)

;; Write to console
(write "hello world")
(write 5)

;;
;; Exercises
;;

;; Exercise 1
;; Implement the function 'adder' below so that it adds 2 to each element in
;; the list, puts it in a new list and returns that list
(defun adder (lst)
    (if (equal (car lst) nil)
    lst; true
    (cons (+ (car lst) 2) (adder (cdr lst))) ;; false
    )
)

(defun adder (lst)
    (if (equal (car lst) nil)
    (let ((a (+ (car lst) 2))))
        (cons a (adder (cdr lst)))
    )
    )
)

(write (adder (list 4 8 15 16 23 42))) ;; this should return (6 10 17 18 25 44)

;; Exercise 2
;; Implement the 'prodder' function below so that it multiplies each element
;; in the list by 3, puts it in a new list and returns that list
(defun prodder (lst) 
    (if (equal (cdr lst) nil)
    (cons (* (car lst) 3) nil)
    (cons (* (car lst) 3) (prodder (cdr lst)))
    )
)

(write (prodder (list 4 8 15 16 23 42)))

;; Exercise 3
;; Implement the 'minusser' function below that subtracts 5 from
;; each element in the list, puts it in a new list and returns that list
(defun minusser (lst) 
    (if (equal (cdr lst) nil)
    (cons (- (car lst) 5) nil)
    (cons (- (car lst) 5) (minusser (cdr lst)))
    )
)

(write (minusser (list 4 8 15 16 23 42)))

;; Exercise 4
;; This must be possible to make simpler! Search your feelings. How could
;; you generalise the concept? What did you have to do each time in
;; the above assignments?
;; Hint: Your function needs to take two arguments: A function and a list
(defun map (func list)
    (if (equal (cdr list) nil)
    (cons ((funcall func (car list))) nil)
    (cons ((funcall func (car list))) (map func (cdr list)))
    )
)