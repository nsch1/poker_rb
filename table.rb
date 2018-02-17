require "./player"
require "./deck"

class Table
  @@dealer = Dealer.new
  @@players = [Player.new("Dealer")]
  @@field = []
  @@discard_pile = []

  def self.dealer
    @@dealer
  end

  def self.players
    @@players
  end

  def self.add_player(name)
    @@players << Player.new(name)
    @@players.last
  end
end