(write-line "Rock Paper Scissors" )

(setf *random-state* (make-random-state t))
(setq c ( random 3 ) )

(write-line "Pick (0)Rock, (1)Paper, (2) Scissors")
(setq a (read))

(if (= a c)
    (write-line "Draw")
    ;; else
    (case c 
            (0 (if (= a 1) ( write-line "Win") ( write-line "Lose")))
            (1 (if (= a 2) ( write-line "Win") (write-line  "Lose")))
            (2 (if (= a 0) ( write-line "Win") ( write-line "Lose")))
        
    )
)

