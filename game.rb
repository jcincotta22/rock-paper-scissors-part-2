# rock = 1
# paper = 2
# sissors = 3
player_score = 0
comp_score = 0
while player_score != 2 && comp_score != 2 do
  puts "Player Score: #{player_score}, Computer Score: #{comp_score}"
  puts "Choose rock (r), paper (p), or sissors: (s)"
  player_choice = gets.chomp.downcase
  comp_choice = rand(3)
  if player_choice == "r" && comp_choice == 0
    puts "Player chose rock!"
    puts "Computer chose rock."
    puts "Tie, choose again!"
  elsif player_choice == "r" && comp_choice == 1
    puts "Player chose rock!"
    puts "Computer chose paper."
    puts "Paper beats rock, Computer wins!"
    comp_score +=1
  elsif player_choice == "r" && comp_choice == 2
    puts "Player chose rock!"
    puts "Computer chose scissors."
    puts "Paper beats Rock, Computer wins!"
    player_wins += 1
  elsif player_choice == "p" && comp_choice == 0
    puts "Player chose paper!"
    puts "Computer chose rock."
    puts "Paper beats rock, You win!"
    player_score += 1
  elsif player_choice == "p" && comp_choice == 1
    puts "Player chose paper!"
    puts "Computer chose paper."
    puts "Tie, choose again!"
  elsif player_choice == "p" && comp_choice == 2
    puts "Player chose paper!"
    puts "Computer chose Scissors."
    puts "Scissors beats Paper, Computer Wins!"
    comp_score +=1
  elsif player_choice == "s" && comp_choice == 0
    puts "Player chose Scissors!"
    puts "Computer chose rock."
    puts "rock beats Scissors, Computer Wins!"
    comp_score +=1
  elsif player_choice == "s" && comp_choice == 1
    puts "Player chose Scissors!"
    puts "Computer chose Paper."
    puts "Scissors beats Paper, you win!"
    player_score += 1
  elsif player_choice == "s" && comp_choice == 2
    puts "Player chose Scissors!"
    puts "Computer chose Scissors."
    puts "Tie, choose again!!"
  else
    puts "Invalid entry, choose again."
  end

end

if comp_score == 2
  puts "Computer wins #{comp_score} to #{player_score}!"
else
  puts "Player wins #{player_score} to #{comp_score}!"
end
