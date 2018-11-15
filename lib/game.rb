require_relative './player'

class Game
  attr_accessor :players

  def initialize(p1, p2, player_class = Player)
    @players = []
    @players << player_class.new(p1)
    @players << player_class.new(p2)
  end

  def attack(player)
    player.take_damage
  end

  def whose_turn
    @players[0]
  end

  def switch_turns
    @players.rotate!
  end

end
