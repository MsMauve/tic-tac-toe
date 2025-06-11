require_relative 'game'

board = Board.new
puts "Empty board:"
board.display

puts "\nTesting valid moves:"
board.place_mark(1, "X")
board.place_mark(5, "O")
board.display

puts "\nTesting invalid moves:"
# Try placing on occupied space
board.place_mark(1, "O")
# Try invalid position
board.place_mark(10, "X")
# Try invalid mark
board.place_mark(2, "Y")
board.display