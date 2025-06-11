class Game
  def initialize
    @board = Board.new
    @player1 = Player.new("Player 1", "X")
    @player2 = Player.new("Player 2", "O")
    @current_player = @player1
  end

  def play
    loop do
      @board.display
      puts "#{@current_player.name}'s turn as #{@current_player.mark}"
      print "Enter a position (1-9): "

      position = gets.chomp.to_i
      if @board.place_mark(position, @current_player.mark)
        if @board.winner?
          @board.display
          puts "Congrats #{@current_player.name}! You won!"
          break
        elsif @board.draw?
          @board.display
          puts "It's a draw!"
          break
        end
        switch_player
      end
    end
  end

  private

  def switch_player
    @current_player = (@current_player == @player1 ? @player2 : @player1)
  end
end