feature "Players see each of their hitpoints" do
  scenario "Players see when they're close to winning" do
    sign_in_and_play
    expect(page).to have_text(5)
  end
end
