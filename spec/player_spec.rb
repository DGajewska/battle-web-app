require 'player'

describe Player do
  let(:player) { described_class.new('Skeletor') }
  
  it 'returns the player name' do
    expect(player.name).to eq 'Skeletor'
  end
end
