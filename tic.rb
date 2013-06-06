class TicTacToe

	attr_accessor :game_won


	def initialize
		@board = [ [1, 2, 3], 
		           [4, 5, 6], 
		           [7, 8, 9] ]
	end

	def game_board
	  @board
	end

	def game_board_prettifier
	  puts @board[0].join(' | ')
	  puts "----------"
	  puts @board[1].join(' | ')
	  puts "----------"
	  puts @board[2].join(' | ')
	end

	def player_one_changes_array(one_answer)
	  @board.each do |a|
	    if a.include?(one_answer)
	    	position = a.index(one_answer)
	    	a[position] = 'X'
	    	win_x
	    end
	  end
	end

	def player_two_changes_array(two_answer)
	  @board.each do |a|
	    if a.include?(two_answer)
	    	position = a.index(two_answer)
	    	a[position] = 'O'
	    	win_o
	    end
	  end
	end

	def win_x
		if @board[0][0] == 'X' && @board[0][1] == 'X' && @board[0][2] == 'X' ||#top row
			@board[1][0] == 'X' && @board[1][1] == 'X' && @board[1][2] == 'X' ||#middle row
			@board[2][0] == 'X' && @board[2][1] == 'X' && @board[2][2] == 'X' ||#bottom row
			@board[0][0] == 'X' && @board[1][1] == 'X' && @board[2][2] == 'X' ||#diagnal from left to right
			@board[0][2] == 'X' && @board[1][1] == 'X' && @board[2][0] == 'X' ||#diagnoal from right to left
			@board[0][0] == 'X' && @board[1][0] == 'X' && @board[2][0] == 'X' ||#first column top to bottom
			@board[0][1] == 'X' && @board[1][1] == 'X' && @board[2][1] == 'X' ||#second column
			@board[0][2] == 'X' && @board[1][2] == 'X' && @board[2][2] == 'X' #third column
			@game_won = true
			puts "Player One, you've won" * 100
				
		end
	end

	def win_o
		if @board[0][0] == 'O' && @board[0][1] == 'O' && @board[0][2] == 'O' ||#top row		
			 @board[1][0] == 'O' && @board[1][1] == 'O' && @board[1][2] == 'O' ||#middle row
			 @board[2][0] == 'O' && @board[2][1] == 'O' && @board[2][2] == 'O' ||#bottom row
			 @board[0][0] == 'O' && @board[1][1] == 'O' && @board[2][2] == 'O' ||#diagnal from left to right
			 @board[0][2] == 'O' && @board[1][1] == 'O' && @board[2][0] == 'O' ||#diagnoal from right to left
			 @board[0][0] == 'O' && @board[1][0] == 'O' && @board[2][0] == 'O' ||#first column top to bottom
			 @board[0][1] == 'O' && @board[1][1] == 'O' && @board[2][1] == 'O' ||#second column
			 @board[0][2] == 'O' && @board[1][2] == 'O' && @board[2][2] == 'O' #third column
			@game_won = true
			puts "Player Two, you've won" * 100
		end
	end


end
