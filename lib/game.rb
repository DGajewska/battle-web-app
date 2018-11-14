require 'player'

class Game
  attr_accessor :player_1, :player_2

  def initialize(p1, p2, player_class = Player)
    @player_1 = player_class.new(p1)
    @player_2 = player_class.new(p2)
  end

  def attack(player)
    player.take_damage
  end

end
