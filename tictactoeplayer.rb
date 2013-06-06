require_relative 'tic.rb'

class TicTacToePlayer
  def self.run
  	@game = TicTacToe.new
  	p @game.game_board_prettifier
  	
  	while true
  		
	    puts "Player one: Choose a spot"
	    one_answer = gets.chomp.to_i
	    @game.player_one_changes_array(one_answer)
	    break if @game.game_won == true
	    p @game.game_board_prettifier
	
	    puts "Player two: Choose a spot"
	    two_answer = gets.chomp.to_i
	    @game.player_two_changes_array(two_answer)
	    break if @game.game_won == true
	    p @game.game_board_prettifier
	end

  end
end

TicTacToePlayer.run