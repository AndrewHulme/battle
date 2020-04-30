feature 'See hit points' do
  scenario 'Can see player 2 hit points' do
    visit('/')
    fill_in 'player_1_name', with: 'Andrew'
    fill_in 'player_2_name', with: 'Catriona'
    click_button "Submit"

    expect(page).to have_content 'Player 2: 100hp'

  end
end
