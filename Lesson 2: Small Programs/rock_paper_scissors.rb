VALID_CHOICES = %w(rock paper scissors Spock lizard)

SHORTCUT_CHOICES = { 'r' => 'rock',
                     'p' => 'paper',
                     's' => 'scissors',
                     'S' => 'Spock',
                     'l' => 'lizard' }

WINNING_COMBINATIONS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['Spock', 'rock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['Spock', 'paper'],
  'Spock' => ['rock', 'scissors']
}

def test_method
  prompt('test message')
end

# def win?(first, second)
#   (first == 'rock' && second == 'scissors') ||
#     (first == 'paper' && second == 'rock') ||
#     (first == 'scissors' && second == 'paper') ||
#     (first == 'lizard' && second == 'Spock') ||
#     (first == 'lizard' && second == 'paper') ||
#     (first == 'rock' && second == 'lizard') ||
#     (first == 'scissors' && second == 'lizard') ||
#     (first == 'paper' && second == 'Spock') ||
#     (first == 'Spock' && second == 'rock') ||
#     (first == 'Spock' && second == 'scissors')
# end

def win?(first, second)
  WINNING_COMBINATIONS[first].include?(second)
end

def display_scores(player, computer)
  prompt("Player Score: #{player}")
  prompt("Computer Score: #{computer}")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

computer_score = 0
player_score = 0

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}. You may type in the first letter (cap sensitive) as a shortcut.")
    choice = Kernel.gets().chomp()

    if SHORTCUT_CHOICES.keys.include?(choice)
      choice = SHORTCUT_CHOICES[choice]
    end

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  Kernel.puts("You chose: #{choice}; Computer chose #{computer_choice}")

  display_results(choice, computer_choice)

  if win?(choice, computer_choice)
    player_score += 1
  elsif win?(computer_choice, choice)
    computer_score += 1
  end

  display_scores(player_score, computer_score)

  if player_score == 3
    prompt("You are the Grand Winner!")
    break
  elsif computer_score == 3
    prompt("The Computer is the Grand Winner!")
    break
  end

  prompt("Do you want to play again? (y/n)")
  play_again = Kernel.gets().chomp().downcase().start_with?('y')
  break if play_again != true
end

prompt("Thank you for playing. Good bye!")
