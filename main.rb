require "./table"

dealer = Table.dealer

puts "Please enter your name: "
player_name = gets.chomp

player = Table.add_player(player_name)

puts player.name