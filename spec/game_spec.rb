require 'game'

describe Game do
  let(:player_instance) { double :Player_instance }
  let(:player_instance2) { double :Player_instance2 }
  let(:player_class) { double :Player_class, new: player_instance }
  let(:subject) { Game.new("Skeletor", "Mr Cuddles", player_class) }

  it 'intializes with two players' do
    expect(subject.players).to include(player_instance)
  end

  describe '#attack' do
    it 'when player 1 attacks player 2 they take damage' do
      expect(player_instance).to receive(:take_damage)
      subject.attack(player_instance)
    end
  end

end
