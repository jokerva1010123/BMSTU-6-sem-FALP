;ax^2 + bx + c = 0
(defun func (a b c)
    (if (= 0 a)
        (if (= 0 b)
            (if (= 0 c)
                (format nil "INFINITY SOLUTION")
                (format nil "NO SOLUTION")
            )
            (/ (- 0 c) b)            
        )
        (if (<  (-  (* b b) 
                    (* (* 4 a) c) 
                )
                0
            )
            (format nil "NO_SOLUTION")
            (
                if (=  (-  (* b b) 
                            (* (* 4 a) c) 
                        )
                        0
                    )
                    (- 0 (/ b (* 2 a)))
                    (list  (/
                                (- (- 0 b)  (sqrt (-  (* b b) (* (* 4 a) c))
                                            )
                                )
                                (* 2 a)
                            )   
                            (/
                                (+ (- 0 b)  (sqrt (-  (* b b) (* (* 4 a) c))
                                            )
                                )
                                (* 2 a)
                            )   
                    )           
            )     
        )
    )
)
