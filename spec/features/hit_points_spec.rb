feature 'See hit points' do
  scenario 'Can see player 2 hit points' do
    sign_in_and_play
    ed = Player.new('Ed')
    expect(page).to have_content "#{ed.name}: #{ed.hp}hp"
  end
end
