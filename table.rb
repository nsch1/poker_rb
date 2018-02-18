require "./player"
require "./deck"

class Table
  attr_accessor :dealer, :players, :field, :discard_pile

  def initialize
    @dealer = Dealer.new
    @players = [Player.new("Dealer")]
    @field = []
    @discard_pile = []
  end

  def seat_player(name)
    @players << Player.new(name)
    @players.last
  end
end