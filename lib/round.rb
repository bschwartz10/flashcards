require 'pry'
require_relative 'deck'

class Round
attr_reader :guesses, :deck, :current_card, :current_guess, :correct_guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card_index = 0
    @correct_guesses = 0
    @current_guess = current_guess
  end

  def current_card
    deck.card[@current_card_index]
  end

  def record_guess(guess)
    @current_guess = Guess.new(guess, current_card)
    guesses << @current_guess
    next_card
    @current_guess
  end

  def next_card
    @current_card_index += 1
  end
  
  def number_correct
    guesses.each do |guess|
    if guess.correct?
      @correct_guesses +=1
    end
  end
    @correct_guesses
  end

  def percent_correct
    ((@correct_guesses.to_f / guesses.count) * 100).to_i
  end

  def start
  puts "Welcome! You're playing with #{deck.count} cards."
  puts "-------------------------------------------------"
    
    deck.card.each do |card|
        puts "This is card number #{(deck.card.index(current_card))+ 1} out of #{deck.count} cards."
        puts "#{current_card.question}"
        user_guess = gets.chomp
        record_guess(user_guess)
        puts "#{guesses.last.feedback}"
      end

    puts "******* Game Over! ********"
    puts "You had #{number_correct} correct guesses out of #{guesses.count} for a score of #{percent_correct}"
  end

end

