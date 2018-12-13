
# feature 'User visits website' do
#   scenario'Testing infrastructure' do
#     visit "/"
#     expect(page).to have_text"Hello Battle!"
#   end
# end

feature 'Filling player names' do
  scenario 'User enters names at start' do
    visit "/"
    fill_in 'Player1_name', with: 'Gabe'
    fill_in 'Player2_name', with: 'Carol'
    click_button 'submit'
    expect(page).to have_text("Gabe vs Carol")
  end
end
