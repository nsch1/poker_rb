require "./table"

table = Table.new
dealer = table.dealer
dealer.current_table = table
opponent = table.seat_player("Dealer")

puts "Please enter your name: "
player_name = gets.chomp
puts

player = table.seat_player(player_name)

puts           "Hello #{player.name}! " \
               "The cards are being shuffled."
puts

dealer.shuffle
dealer.deal_cards(2)

puts           "You have: " \
               "#{player.hand[0].rank_name} of " \
               "#{player.hand[0].suit} & " \
               "#{player.hand[1].rank_name} of " \
               "#{player.hand[1].suit}."
puts

dealer.burn_card
dealer.put_cards(3)

puts           "Flop: "
puts field =   "Field: " \
               "#{table.field[0].rank_name} of " \
               "#{table.field[0].suit} | " \
               "#{table.field[1].rank_name} of " \
               "#{table.field[1].suit} | " \
               "#{table.field[2].rank_name} of " \
               "#{table.field[2].suit} | "
puts

dealer.burn_card
dealer.put_cards(1)

puts           "Turn: "
puts field +=  "#{table.field[3].rank_name} of " \
               "#{table.field[3].suit} | "
puts

dealer.burn_card
dealer.put_cards(1)

puts           "River: " 
puts field +=  "#{table.field[4].rank_name} of " \
               "#{table.field[4].suit}"
puts

puts           "Dealer has " \
               "#{opponent.hand[0].rank_name} of " \
               "#{opponent.hand[0].suit} & " \
               "#{opponent.hand[1].rank_name} of " \
               "#{opponent.hand[1].suit}."