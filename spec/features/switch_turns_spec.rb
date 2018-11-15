feature 'switching turns' do

  scenario 'swtich turns after player makes move' do
    sign_in_and_play
    player = Game.instance.whose_turn
    click_button 'Attack'
    expect(Game.instance.whose_turn).not_to eq player
  end

end
