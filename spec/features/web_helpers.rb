def sign_in_and_play
  visit('/')
  fill_in 'player_1_name', with: 'Andrew'
  fill_in 'player_2_name', with: 'Catriona'
  click_button "Submit"
end
