(defvar *slist* '(1 2 3 4 5))

(CAR (CDR '(1 2 3 4 5))) => 2
(CADR '(1 2 3 4 5)) => 2

(CAR (CDR (CDR '(1 2 3 4 5)))) => 3
(CADDR '(1 2 3 4 5)) => 3

(CAR (CDR (CDR (CDR '(1 2 3 4 5))))) => 4	
(CADDDR '(1 2 3 4 5)) => 4

#(
  "LaTeX code block"
  (caadr '((blue cube)(red pyramid)))   ; -> red
  (cdar '((abc)(def)(ghi)))             ; -> Nil
  (cadr '((abc)(def)(ghi)))             ; -> (def)
  (caddr '((abc)(def)(ghi)))            ; -> (ghi)

  (list 'Fred 'and 'Wilma) => (Fred and Wilma)
  (list 'Fred '(and Wilma)) => (Fred (and Wilma))
  (cons Nil Nil) => (Nil . Nil) => (Nil)
  (cons T Nil) => (T . Nil) => (T)
  (cons Nil T) => (Nil . T)
  (list Nil) => (Nil)
  (cons '(T) Nil)	 => ((T) . Nil)	 => ((T))
  (list '(one two) '(free temp)) => ((one two) (free temp))
	
  (cons 'Fred '(and Willma)) => (Fred . (and Willma)) => (Fred and Willma)
  (cons 'Fred '(Wilma)) => (Fred .  (Willma)) => (Fred Willma)
  (list Nil Nil) => (Nil Nil)
  (list T Nil) => (T Nil)
  (list Nil T) => (Nil T)
  (cons T (list Nil)) => (cons T '(Nil)) => (T . (Nil)) => (T Nil)
  (list '(T) Nil) => ((T) Nil)
  (cons '(one two) '(free temp)) => ((one two) . (free temp))  => ((one two) free temp)
)

(defun f1 (ar1 ar2 ar3 ar4) (list (list ar1 ar2) (list ar3 ar4)))
(f1 1 2 3 4) => ((1 2) (3 4))
;; 
(lambda (ar1 ar2 ar3 ar4) (list (list ar1 ar2) (list ar3 ar4)))
((lambda (ar1 ar2 ar3 ar4) (list (list ar1 ar2) (list ar3 ar4))) 1 2 3 4) => ((1 2) (3 4))

(defun f2 (ar1 ar2) (list (list ar1) (list ar2)))
(f2 1 2) => ((1) (2))
;;
(lambda (ar1 ar2) (list (list ar1) (list ar2)))
((lambda (ar1 ar2) (list (list ar1) (list ar2))) 1 2) => ((1) (2))\

(defun f3 (ar1) (list (list (list ar1))))
(f3 1) => (((1)))
;;
(lambda (ar1) (list (list (list ar1))))
((lambda (ar1) (list (list (list ar1)))) 1) => (((1)))

