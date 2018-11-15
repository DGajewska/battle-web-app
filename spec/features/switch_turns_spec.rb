feature 'switching turns' do

  scenario 'swtich turns after player makes move' do
    sign_in_and_play
    player = $battle.whose_turn
    click_button 'Attack'
    expect($battle.whose_turn).not_to eq player
  end

end
