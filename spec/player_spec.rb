require "./views/player"

describe Player do

it "should return its name" do

player = Player.new("name")
expect (player.name) == "name"

end


end
