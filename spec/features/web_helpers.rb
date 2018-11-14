def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Skeletor'
  fill_in :player_2_name, with: 'Mr Cuddles'
  click_button 'Submit'
end
