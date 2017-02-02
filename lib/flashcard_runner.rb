require 'pry'
require_relative 'round'

card_1 = Card.new("What is the capital of Alaska?", "Juneau")
card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
deck = Deck.new([card_1, card_2])
round = Round.new(deck)

round.start
#   puts "Welcome! You're playing with #{deck.count} cards."
#   puts "-------------------------------------------------"
    
#     deck.card.each do |card|
#       puts "This is card number #{(deck.card.index(round.current_card))+ 1} out of #{deck.count} cards."
#       puts "#{round.current_card.question}"
#       user_guess = gets.chomp
#       round.record_guess(user_guess)
#       puts "#{round.guesses.last.feedback}"
#     end

#   puts "******* Game Over! ********"
#   puts "You had #{round.number_correct} correct guesses out of #{round.guesses.count} for a score of #{round.percent_correct}"
# end