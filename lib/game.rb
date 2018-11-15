require_relative './player'

class Game
  attr_accessor :players, :turn_index
  @@game = nil
  def self.instance
    @@game
  end

  def self.create(p1, p2)
    @@game = Game.new(p1,p2)
  end

  def initialize(p1, p2, player_class = Player)
    @turn_index = 0
    @players = []
    @players << player_class.new(p1)
    @players << player_class.new(p2)
  end

  def attack(player)
    player.take_damage
  end

  def whose_turn
    @players[@turn_index]
  end

  def switch_turns
     @turn_index = (@turn_index + 1) % 2
  end

  def battle_continues?
    players[0].hp * players[1].hp != 0
  end
end
