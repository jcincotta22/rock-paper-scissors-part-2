player_wins = ["rscissors", "prock", "spaper"]
comp_wins = ["srock", "rpaper", "pscissors"]
tie = ["ppaper", "rrock", "sscissors"]
choices = ["Rock", "Paper", "Scissors"]
computer_array = ["rock", "paper", "scissors"]

player_score = 0
comp_score = 0

while player_score != 2 && comp_score != 2 do
  puts "Player Score: #{player_score}, Computer Score: #{comp_score}"
  puts "Choose rock (r), paper (p), or sissors: (s)"
  player_choice = gets.chomp.downcase
  comp_choice = computer_array.sample
  rps_index = computer_array.index {|x| x.include?(player_choice)}
  if player_wins.include?(player_choice + comp_choice)
    puts "Player chose #{computer_array[rps_index]}."
    puts "Computer chose #{comp_choice}."
    puts "Player wins!"
    player_score +=1
  elsif comp_wins.include?(player_choice + comp_choice)
    puts "Player chose #{computer_array[rps_index]}."
    puts "Computer chose #{comp_choice}."
    puts "Computer wins!"
    comp_score +=1
  elsif tie.include?(player_choice + comp_choice)
    puts "Player chose #{computer_array[rps_index]}."
    puts "Computer chose #{comp_choice}."
    puts "It's at Tie! Choose again..."
  else
    puts "Invalid entry, choose again..."
  end

end

if comp_score == 2
  puts "Computer wins #{comp_score} to #{player_score}!"
else
  puts "Player wins #{player_score} to #{comp_score}!"
end
