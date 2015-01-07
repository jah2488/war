class Player
  attr_accessor :cards, :score
  def initialize
    @cards = Deck.new
    @score = 0
  end
end
