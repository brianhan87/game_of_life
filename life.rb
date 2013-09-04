# class Life
def game
	board = [
		[false, true, false],  ## [ 0,1,0 ]
 		[true,  true, true ],
 		[false, true, false]    ## [ 1,0,1 ]
	]

	new_board = board
	neighbors = 0

	# i =0
	# board.each do |row|
	# 	dostuffwith row
	# 	i += 1
	# end


	board.each_with_index do |row, i|
		row.each_with_index do |item, j|
			if item == false
				neighbors += 1 if board[ i, j+1 ]
				neighbors += 1 if board[ i, j-1 ]

				neighbors += 1 if board[ i+1, j+1 ]
				neighbors += 1 if board[ i+1, j ]
				neighbors += 1 if board[ i+1, j-1 ]

				neighbors += 1 if board[ i-1, j+1 ]
				neighbors += 1 if board[ i-1, j ]
				neighbors += 1 if board[ i-1, j-1 ]
			
				new_board[i][j] = true if neighbors == 3	 
				neighbors = 0 #reset
			else # item == true
				neighbors += 1 if board[ i, j+1 ]
				neighbors += 1 if board[ i, j-1 ]

				neighbors += 1 if board[ i+1, j+1 ]
				neighbors += 1 if board[ i+1, j ]
				neighbors += 1 if board[ i+1, j-1 ]

				neighbors += 1 if board[ i-1, j+1 ]
				neighbors += 1 if board[ i-1, j ]
				neighbors += 1 if board[ i-1, j-1 ]

				new_board[i][j] = false if neighbors !=2
				neighbors = 0 #reset
			end 
		end
	end
	return new_board
end
# end


	# index = 0
	# last_cell = fal

	# while index < board.length



	game