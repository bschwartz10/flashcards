require_relative 'guess'

class Deck
attr_reader :card

  def initialize(card)
    @card = card
  end

  def count
    @card.length
  end
end