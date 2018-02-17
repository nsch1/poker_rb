class Player
  attr_accessor :name, :hand

  def initialize(name)
    @name = name
    @hand = []
  end

  def receive_card(card)
    @hand << card
  end

  def card_info
    [@hand[0].suit, parse_card_rank(@hand[0]), @hand[1].suit, parse_card_rank(@hand[1])]
  end

  def parse_card_rank(card)
  	ranks = ["Jack", "Queen", "King", "Ace"]
  	if card.rank >= 11
  		ranks[card.rank - 11]
  	else
  		card.rank
  	end
  end
end