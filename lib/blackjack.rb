def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  num = deal_card + deal_card
  
  display_card_total(num)
  num
end

def hit?(num)
  prompt_user
  h_s = get_user_input
  if h_s == "s"
       num
    elsif h_s == "h"
       num += deal_card
    else 
        invalid_command
        prompt_user 
        get_user_input
      end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  user_cards = initial_round
  prompt_user
  until user_cards > 21
  user_input = get_user_input
  if user_input == "s"
    prompt_user
  end
  if user_input == "h"
    user_cards += deal_card
  end
  p "Your cards add up to #{user_cards}"
end
end
    
