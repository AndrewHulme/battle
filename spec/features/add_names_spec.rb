feature 'Add names' do
  scenario 'Can add and store names to the database' do
    visit('/')
    fill_in 'player_1_name', with: 'Andrew'
    fill_in 'player_2_name', with: 'Catriona'
    click_button "Submit"

    # visit('/names')

    expect(page).to have_content 'Andrew vs. Catriona'

  end
end
