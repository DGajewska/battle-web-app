require 'player'

describe Player do
  let(:player1) { described_class.new('Skeletor') }
  let(:player2) { described_class.new('Mr Cuddles') }

  it 'returns the player name' do
    expect(player1.name).to eq 'Skeletor'
  end

  it 'returns the hit points' do
    expect(player1.hp).to eq described_class::DEFAULT_HP
  end

  it 'damages the player' do
    expect(player2).to receive(:take_damage)
    player1.attack(player2)
  end

  it 'reduces the player hit points' do
    expect { player1.take_damage }.to change { player1.hp }.by(-10)
  end

end
