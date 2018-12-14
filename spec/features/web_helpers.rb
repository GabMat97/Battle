def sign_in_and_play
  visit "/"
  fill_in 'Player1_name', with: 'Gabe'
  fill_in 'Player2_name', with: 'Carol'
  click_button 'submit'
end
