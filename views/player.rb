class Player

DEFAULT_HIT_POINTS = 20

attr_reader :name, :hit_points

def initialize(name, hitpoints = DEFAULT_HIT_POINTS)
@name = name
@hit_points = hitpoints
end

def attacking

  @hit_points -= 10

end

end
