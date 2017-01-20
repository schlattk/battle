require "./views/game"

describe Game do

subject(:game) {described_class.new(player1,player2)}
let(:player1) {double :player1}
let(:player2) {double :player2}

describe '#attack' do
  it 'damages the player' do
    expect(player2).to receive(:damage)
    game.attacks(player2)
    end
end


end
