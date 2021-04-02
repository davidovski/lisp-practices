(write	(with-open-file (stream "words.txt")
	 (loop for line = (read-line stream nil)
	  while line sum (if ( 
			  (lambda (i)
			   (= 0 (- i (floor i)))
			  ) (+ -0.5 (
					  sqrt (
						  + 0.25 (
							  * 2 (loop for c across (string-downcase line)  
								  sum (+ 1 (position c "abcdefghijklmnopqrstuvwxyz"))
							      )
							 )
					       )
				    )
			    )
			  )
		  1 0
		  )
	 )	
	)
)
