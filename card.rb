class Card
  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def rank_name
    ranks = ["Jack", "Queen", "King", "Ace"]
    if self.rank >= 11
      ranks[self.rank - 11]
    else
      self.rank
    end
  end
end