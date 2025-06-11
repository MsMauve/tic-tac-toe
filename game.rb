class Board
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
    else
      puts "Try again with a valid position/mark!"
    end
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