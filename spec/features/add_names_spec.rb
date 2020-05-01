feature 'Add names' do
  scenario 'Can add and store names to the database' do
    sign_in_and_play
    expect(page).to have_content 'Andrew vs. Ed'
  end
end
