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

	def deal_card(player)
		player.receive_card(@deck.pop)
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