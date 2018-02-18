require "./table"

table = Table.new

dealer = table.dealer

puts "Please enter your name: "
player_name = gets.chomp
puts

player = table.seat_player(player_name)

puts "Hello #{player.name}! The cards are being shuffled."
puts

dealer.shuffle
dealer.deal_all_cards(table)

puts "You have: #{player.card_info[1]} of #{player.card_info[0]} & #{player.card_info[3]} of #{player.card_info[2]}."