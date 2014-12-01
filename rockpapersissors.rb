# all players pick rock paper or scissors
# compare competitor result

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

puts "-------- Welcome to Paper, Rock Scissors! --------"

def display_winning_message(winning_choice)
  case winning_choice
    when 'p'
      puts "------------ Paper wraps Rock! ------------"
    when 'r'
      puts "---------- Rock smashes Scissors! ----------"
    when 's'
      puts "----------- Scissors cuts Paper! -----------"
  end
end

loop do
  begin
    puts "Pick one: p = Paper, r = Rock, s = Scissors"
    player_choice = gets.chomp.downcase
  end until CHOICES.keys.include?(player_choice)
    computer_choice = CHOICES.keys.sample

    if player_choice == computer_choice
      puts "---------------- It's a tie! ----------------"
    elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
      display_winning_message(player_choice)
      puts "---------------- You won!!! ----------------"
    else
      display_winning_message(computer_choice)
      puts "----------- BOOOOO you lost...  -----------"
    end

  puts "------------ Play again? (y/n) ------------"
  break if gets.chomp.downcase != 'y'

end

puts "------------ Good playing with you! ------------"
