feature 'Confirm attack' do
  scenario 'Confirm attack on player 2' do
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).to have_content 'Andrew has attacked Catriona!'
  end
end
