feature 'See hit points' do
  scenario 'Can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Player 2: 100hp'
  end
end
