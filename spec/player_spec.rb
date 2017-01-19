require "./views/player"

describe Player do

it "should return its name" do

player = Player.new("name")
expect (player.name) == "name"

end
it "should have hit points" do
player = Player.new("name")
expect(player.hit_points).to eq(20)
end

it "player's hit_points should be reduced when attacked" do
player1 = Player.new("name1")
player2 = Player.new("name2")
player2.attacking
expect(player2.hit_points).to eq(10)

end


end
