require "./table"

table = Table.new
dealer = table.dealer
dealer.current_table = table

puts "Please enter your name: "
player_name = gets.chomp
puts

player = table.seat_player(player_name)

puts "Hello #{player.name}! The cards are being shuffled."
puts

dealer.shuffle
dealer.deal_cards(2)

puts dealer.burn_card
puts "You have: #{player.card_info[1]} of #{player.card_info[0]} & #{player.card_info[3]} of #{player.card_info[2]}."