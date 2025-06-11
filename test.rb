require_relative 'game'

board = Board.new
puts "Empty board - should be no winner:"
board.display
puts "Winner? #{board.winner?}"

puts "\nTesting horizontal win:"
board.place_mark(1, "X")
board.place_mark(2, "X")
board.place_mark(3, "X")
board.display
puts "Winner? #{board.winner?}"

puts "\nTesting diagonal win:"
board = Board.new
board.place_mark(1, "O")
board.place_mark(5, "O")
board.place_mark(9, "O")
board.display
puts "Winner? #{board.winner?}"