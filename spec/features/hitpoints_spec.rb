feature "Players see each of their hitpoints" do
  scenario "Players see when they're close to winning" do
    sign_in_and_play
    expect(page).to have_text(5)
  end
end

feature "Players attack enemy" do
  scenario "Player attacks and wins" do
    sign_in_and_play
    click_button 'attack'
    expect(page).to have_text("Gabe attacked Carol")
  end
end
