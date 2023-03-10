(defmacro ->> (initial-form &rest forms)
  (reduce #'(lambda (acc next)
              (if (listp next)
                  (append next (list acc))
                  (list next acc)))
          forms
          :initial-value initial-form))

(defconstant +auto-win-scores+ '(7 11))
(defconstant +rethrow-combinations+ '((1 1) (6 6)))

(defun throw-dices ()
  (let ((first-throw (1+ (random 6)))
        (second-throw (1+ (random 6))))
    (list first-throw second-throw)))

(defun score-results (player-id &optional (score 0))
  (let* ((dices (throw-dices))
         (dices-sum (apply #'+ dices))
         (result-score (+ score dices-sum)))
    (format T "Player ~a throws ~a: ~a -> ~a ~%" player-id dices score result-score)
    (cond ((member dices +rethrow-combinations+ :test #'equal)
           (score-results player-id result-score))
          ((member dices-sum +auto-win-scores+)
           (cons player-id -1))
          (T (cons player-id result-score)))))

(defun pick-a-winner (a b)
  (let ((score-a (cdr a))
        (score-b (cdr b)))
    (cond ((= score-a -1) a)
          ((= score-b -1) b)
          ((>= score-a score-b) a)
          (T b))))

(defun play (players)
  (let ((init-player-id 0))
    (->> (loop repeat players collect (incf init-player-id))
         (mapcar #'(lambda (player-id)
                     (score-results player-id)))
         (reduce #'pick-a-winner)
         car
         (format T "Winner: ~a")
         not)))
