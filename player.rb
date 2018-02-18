class Player
  attr_accessor :name, :hand

  def initialize(name)
    @name = name
    @hand = []
  end

  def receive_card(card)
    @hand << card
  end
end