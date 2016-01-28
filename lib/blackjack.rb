def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = 1 + rand(10)
  return card # code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
 input = gets.chomp
 return input 
  # code #get_user_input here
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  num1 = deal_card
  num2 = deal_card
  initial = num1 + num2
  display_card_total(initial)
  return initial 
  # code #initial_round here
end

def hit?(num)
  
  prompt_user
  so = get_user_input
  
  if so == "s"
    return num 
  else so == "h"
    another = num + deal_card
    return another
  end
 # code hit? here
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  
  until total > 21 
    so_far = hit?(total)
    display_card_total(so_far)
    total = so_far 
  end
  end_game(total)
end
    