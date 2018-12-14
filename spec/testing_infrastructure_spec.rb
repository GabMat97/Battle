
# feature 'User visits website' do
#   scenario'Testing infrastructure' do
#     visit "/"
#     expect(page).to have_text"Hello Battle!"
#   end
# end

feature 'Filling player names' do
  scenario 'User enters names at start' do
    sign_in_and_play
    expect(page).to have_text("Gabe vs Carol")
  end
end
