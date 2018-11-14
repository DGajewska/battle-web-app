feature 'Names' do

  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Skeletor'
    fill_in :player_2_name, with: 'Mr Cuddles'
    click_button 'Submit'
    expect(page).to have_content 'Skeletor vs. Mr Cuddles'
  end
end
