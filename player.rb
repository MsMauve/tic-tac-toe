class Player
  attr_reader :name, :mark

  def initialize(name, mark)
    @name = name
    @mark = mark.upcase
  end
end