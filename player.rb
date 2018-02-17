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
		[@hand[0].suit, @hand[0].rank, @hand[1].suit, @hand[1].rank]
	end
end