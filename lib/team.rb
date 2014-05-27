require 'player'
class Team
  attr_reader :team_name

  def initialize(name)
    @team_name = name
    @players = []
  end

  def filter_by_position(position)
    # returns players in the given position
    @players.find {|player| player.position = position }
  end


  def add_player(name, position)
    @players.push(Player.new(name,position))
  end

  def to_s
    @players.each {|player | puts player}
  end
end