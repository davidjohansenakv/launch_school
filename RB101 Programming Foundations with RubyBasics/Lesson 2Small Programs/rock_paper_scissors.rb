VALID_CHOICES = ['r', 'p', 'sp', 'sc', 'l']
CHOICE_FULL = {'r' => :rock, 'p' => :paper, 'sp' => :spock, 'sc' => :scissors, 'l' => :lizard }
BEATS = { rock: [:scissors, :lizard], paper: [:rock, :spock], scissors: [:paper, :spock], lizard: [:paper, :spock], spock: [:rock, :scissors] }
POSSIBLE_RESULTS = [ 'player', 'computer', 'tie' ]

choice_message = 'Choose one: rock (r), paper (p), spock (sp), scissors (sc), lizard (l)'

def increment_score(winner_score)
  winner_score += 1
end 

def display_score(player_wins, computer_wins)
  prompt("The current score is #{player_wins} wins for player, #{computer_wins} for computer ")
end 

def game_winner(player, computer)
  if won?(player, computer)
    POSSIBLE_RESULTS[0]
  elsif won?(computer, player)
    POSSIBLE_RESULTS[1]
  else 
    POSSIBLE_RESULTS[2]
  end 
end 

def won?(player, computer)
  BEATS[player].include?(computer)
end

def display_winner(winner)
  prompt(winner + " won the game!")
end 

def display_results(player_choice, computer_choice)
  if won?(player_choice, computer_choice)
    prompt("You won!")
  elsif won?(computer_choice, player_choice)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to rock paper scissors spock lizard!")
prompt("Good luck!")

player_wins = 0
computer_wins = 0
loop do
  player_choice = nil
  loop do
    prompt(choice_message)
    player_choice = Kernel.gets().chomp().downcase 
    break if VALID_CHOICES.include?(player_choice)
    puts("Seems like you didn't choose one of the valid options. Try again!")
  end

  player_choice = CHOICE_FULL[player_choice]
  computer_choice = CHOICE_FULL[VALID_CHOICES.sample()]

  prompt("You chose: #{player_choice.to_s}; computer chose: #{computer_choice.to_s}")

  game_winner = game_winner(player_choice, computer_choice)
  if game_winner == 'player'
  player_wins = increment_score(player_wins)  
  elsif game_winner == 'computer'
    computer_wins = increment_score(computer_wins)
  end 
  display_results(player_choice, computer_choice)


  display_score(player_wins, computer_wins)
  break if player_wins == 3 || computer_wins == 3 
  prompt("Do you want to play again? (Y)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end
