feature 'Names' do

  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Skeletor vs. Mr Cuddles'
  end

  # As Player 1,
  # So I can start to win a game of Battle,
  # I want my attack to reduce Player 2's HP

end
