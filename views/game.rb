class Game

  attr_reader :player1, :player2, :attacker, :victim

  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
    @attacker = player1
    @victim = player2
  end

  def attacks
    victim.damage
  end

  def switch_players
    attacker == player1 ? @attacker = player2 : @attacker = player1
    victim == player1 ? @victim = player2 : @victim = player1
  end

end
