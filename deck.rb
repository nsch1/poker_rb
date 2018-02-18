require "./card"
require "./player"

class Dealer
  attr_accessor :deck, :current_table
  
  def initialize
    @deck = []
    @current_table
    fill_deck_with_cards
  end

  def shuffle
    for c in (1..12) do
      @deck = deck.shuffle
    end
  end

  def deal_cards(amount)
    amount.times do
      current_table.players.each do |player|
        deal_card(player)
      end
    end
  end

  def put_cards(amount)
    amount.times do
      current_table.put_card_on_field(deck.pop)
    end
  end

  def burn_card
    current_table.discard_pile << deck.pop
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

    def deal_card(place)
      place.receive_card(deck.pop)
    end
end