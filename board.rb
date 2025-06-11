class Board
  WINNING_BOARDS = [
    [0, 1, 2], # top row
    [3, 4, 5], # middle row
    [6, 7, 8], # bottom row
    [0, 3, 6], # left column
    [1, 4, 7], # middle column
    [2, 5, 8], # right column
    [0, 4, 8], # diagonal
    [2, 4, 6]  # diagonal
  ]

  def initialize
    @cells = Array.new(9, " ")
  end
  
  def display
    spacer_line = "---+---+---"
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts spacer_line
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts spacer_line
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def place_mark(position, mark)
    if valid_move?(position, mark)
      @cells[position - 1] = mark.upcase
      true
    else
      puts "Try again with a valid position/mark!"
      false
    end
  end

  def winner?
    WINNING_BOARDS.any? do |combo|
      marks = combo.map{ |position| @cells[position]}
      marks.uniq.length == 1 && marks[0] != " "
    end
  end

  def draw?
    !winner? && @cells.none? { |cell| cell == " "}
  end
  
  private

  def valid_move?(position, mark)
    valid_marks = ["o", "x"]
    return false unless (1..9).include?(position)
    return false unless valid_marks.include?(mark.downcase)
    return false unless @cells[position - 1] == " "
    true
  end

end