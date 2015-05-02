require 'card'

class Hand
  HAND_RANKINGS = { royal_flush: 10,
                    straight_flush: 9,
                    four_of_a_kind: 8,
                    full_house: 7,
                    flush: 6,
                    straight: 5,
                    three_of_a_kind: 4,
                    two_pair: 3,
                    one_pair: 2,
                    high_card: 1
                  }

  def initialize([cards])
    @card1, @card2, @card3, @card4, @card5 = cards
    @cards = cards
    evaluate_hand
  end

  def evaluate_hand
    @hand_rank = 10 if royal_flush?
    @hand_rank = 09 if straight_flush?
    @hand_rank = 08 if four_of_a_kind?
    @hand_rank = 07 if full_house?
    @hand_rank = 06 if flush?
    @hand_rank = 05 if straight?
    @hand_rank = 04 if three_of_a_kind?
    @hand_rank = 03 if two_pair?
    @hand_rank = 02 if one_pair?
    @hand_rank = 01 if high_card?

    @highest_value = # hmm when do we define this.
  end

  def royal_flush?
    straight_flush? && highest_value == 14
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
  end

  def full_house?
  end

  def flush?
    a_suit = @card1.suit
    cards.all? {|card| card.suit == a_suit}
  end

  def straight?
    card_nums = @cards.map{ |card| card.num }.sort
    cards_nums.last - card_nums.first == 5 && card_nums.uniq.length == 5
  end

  def three_of_a_kind?
  end

  def two_pair?
  end

  def one_pair?
  end

  def high_card?
  end


end
