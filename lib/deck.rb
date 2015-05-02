require_relative "card"

class Deck
attr_reader :stack_of_cards

  def initialize
    @stack_of_cards = []
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]
    suits = [:Spades, :Hearts, :Diamonds, :Clubs]
    suits.each do |suit|
      ranks.size.times do |i| # 0 - 12
        @stack_of_cards << Card.new( ranks[i], suit, i + 2 )
      end
    end
    @stack_of_cards.shuffle!
  end

  # create multidimensianal deck of cards
  # with spades suit: index 1, hearts suit: index 2, etc. 

end
