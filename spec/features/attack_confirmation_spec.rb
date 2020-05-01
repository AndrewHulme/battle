feature 'Confirm attack' do
  scenario 'Confirm attack on player 2' do
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).to have_content 'Andrew has attacked Ed!'
  end

  scenario 'Reduced health is displayed on page' do
    sign_in_and_play
    click_button "Attack Player 2"
    expect(page).not_to have_content 'Ed: 100hp'
    expect(page).to have_content 'Ed: 90hp'
  end

  scenario 'Attack reduces opponents HP' do
    sign_in_and_play
    click_button "Attack Player 2"
    expect($player_2.hp).to eq 90
  end
end
