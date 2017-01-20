require "./views/game"

describe Game do

subject(:game) {described_class.new(player1,player2)}
let(:player1) {double :player1}
let(:player2) {double :player2}

describe '#attack' do
  it 'damages the player' do
    expect(player2).to receive(:damage)
    game.attacks
    end
end

describe '#switch_players' do
  it "switches attacking player" do
    game.switch_players
    expect(game.attacker).to eq player2
  end
end


end
