class Player
  attr_reader :position, :name
  def initialize(name,position)
    @name = name
    @position = position
  end

  def to_s
   "#{@name}-#{@position}"
  end
end