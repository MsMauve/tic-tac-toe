class Player
  attr_reader :name, :mark

  def initalize(name, mark)
    @name = name
    @mark = mark.upcase
  end
end