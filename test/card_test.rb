gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/card.rb'

require 'pry'

class CardTest < Minitest::Test

  def test_new_instance_of_card_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert card
  end

  def test_card_has_a_question
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_card_has_an_answer
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "Juneau", card.answer
  end




end