feature 'hit points' do

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario 'see Player 2s HP' do
    visit('/')
    fill_in :player_1_name, with: 'Skeletor'
    fill_in :player_2_name, with: 'Mr Cuddles'
    click_button 'Submit'
    expect(page).to have_content 'Mr Cuddles HP: 50'
  end
end
