
feature 'User visits website' do
  scenario'Testing infrastructure' do
    visit "/"
    expect(page).to have_text("Hello Battle!")
  end
end
