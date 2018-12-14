require 'player'
describe Player do
  it 'should return its own name' do
    player1 = Player.new("Gabe")
    expect(player1.name).to eq ("Gabe")
  end
end
