require 'pry'
class Deck
    attr_accessor :cards
    def initialize()
        @cards = Card.shuffle
    end

    def choose_card
        @cards.delete(@cards.sample)
    end

end

class Card

    SUITS= %w(Hearts Clubs Spades Diamonds)

    RANKS = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    attr_reader :rank, :suit
   
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
    
    def self.shuffle
        full_deck = []
        RANKS.each do |rank|
            SUITS.each do |suit|
                
                full_deck << Card.new(suit,rank)
            end
        end
        full_deck
       
    end

end
