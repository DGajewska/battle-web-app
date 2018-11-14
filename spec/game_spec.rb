require 'game'

describe Game do
  let(:player_instance) { double :Player_instance }
  let(:player_class) { double :Player_class, new: player_instance }
  let(:subject) { Game.new("Skeletor", "Mr Cuddles", player_class) }

  it 'intializes with two players' do
    expect(subject.player_1).to eq(player_instance)
    expect(subject.player_2).to eq(player_instance)
  end

  describe '#attack' do
    it 'when player 1 attacks player 2 they take damage' do
      expect(subject.player_2).to receive(:take_damage)
      subject.attack(player_1)
    end
  end

end
