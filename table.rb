require "./player"
require "./deck"

class Table
	@@dealer = Dealer.new
	@@player = "null"
	@@field = []
	@@discard_pile = []

	def self.dealer
		@@dealer
	end

	def self.add_player(name)
		@@player = Player.new(name)
	end
end