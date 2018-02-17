require "./card.rb"
require "./deck.rb"
require "./player.rb"

dealer = Dealer.new
player = Player.new("Paul")

dealer.shuffle

dealer.deal_card(player)

puts dealer.deck.length
puts player.hand