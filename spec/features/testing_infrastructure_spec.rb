feature 'Names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Skeletor'
    fill_in :player_2_name, with: 'Mr Cuddles'
    click_button 'Submit'
    expect(page).to have_content 'Skeletor vs. Mr Cuddles'
  end
end
