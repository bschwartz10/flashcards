# gem 'minitest', '~> 5.2'
# require 'minitest/autorun'
# require 'minitest/pride'
# require_relative '../lib/card_generator.rb'

# class CardGeneratorTest < Minitest::Test

#   # def test_does_class_exist
#   #   filename = "cards.txt"
#   #   cards = CardGenerator.new(filename)
    
#   #   assert_instance_of CardGenerator, cards
#   # end

#   # def test_does_it_put_card_objects
#   #   filename = "cards.txt"
#   #   cards = CardGenerator.new(filename)
# def test_it_is_associated_with_a_file_when_created
#       filename = "../lib/cards.txt"
#       card_generator = CardGenerator.new(filename).cards_gen
#       assert File.exist?(filename)
#     end

#     def test_cards_are_stored_in_an_array
#       # skip
#       filename = "../lib/cards.txt"
#       card_generator = CardGenerator.new(filename).cards_gen
#       assert card_generator.is_a? Array
#     end

#     def test_cards_in_the_array_are_tied_to_card_class
#       # skip
#       filename = "../lib/cards.txt"
#       card_generator = CardGenerator.new(filename).cards_gen
#       assert_instance_of Card, card_generator[0]
#     end

#     def test_card_count_in_new_deck_is_6
#       # skip
#       filename = "../lib/cards.txt"
#       card_generator = CardGenerator.new(filename).cards_gen
#       assert_equal 4, card_generator.count
#     end

#     def test_the_correct_question_is_posed
#       # skip
#       filename = "../lib/cards.txt"
#       card_generator = CardGenerator.new(filename).cards_gen
#       assert_equal "Whats the largest land animal in North America?", card_generator[0].question
#     end

#     def test_this_is_the_answer_i_expect
#       # skip
#       filename = "../lib/cards.txt"
#       card_generator = CardGenerator.new(filename).cards_gen
#       assert_equal "bison", card_generator[0].answer
#     end

# end