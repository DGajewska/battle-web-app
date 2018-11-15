class Player
  attr_reader :name
  attr_accessor :hp
  DEFAULT_HP = 50

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def take_damage
    @hp -= 10
    $battle.switch_turns
  end

end
