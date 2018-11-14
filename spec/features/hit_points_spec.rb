feature 'hit points' do

  # As Player 1,
  # So I can see how close I am to winning
  # I want to see Player 2's Hit Points
  scenario 'see Player 2s HP' do
    sign_in_and_play
    expect(page).to have_content 'Mr Cuddles HP: 10'
  end
end
