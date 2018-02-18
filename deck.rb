require "./card"
require "./player"

class Dealer
  attr_accessor :deck
  
  def initialize
    @deck = []
    fill_deck_with_cards
  end

  def shuffle
    for c in (1..12) do
      @deck = @deck.shuffle
    end
  end

  def deal_all_cards(table)
    2.times do
      table.players.each do |player|
        deal_card(player)
      end
    end
  end

  def deal_card(place)
    place.receive_card(@deck.pop)
  end

  private

    def fill_deck_with_cards
      suits = [:hearts, :diamonds, :spades, :clubs]

      for suit in suits do
        for rank in (2..14) do
          @deck << Card.new(suit, rank)
        end
      end
    end
end