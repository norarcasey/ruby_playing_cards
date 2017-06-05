module RubyPlayingCards
  class Deck
    SUITS = [
      { name: :spades,    icon: :♠},
      { name: :hearts,    icon: :♥},
      { name: :diamonds,  icon: :♦},
      { name: :clubs,     icon: :♣}
    ]
    attr_accessor :cards

    def initialize
      @cards = []
      build_deck
    end

    def size
      @cards.size
    end

    def to_s
      @cards.each_with_index do |card, index|
        puts "#{card.suit}#{card.rank} -- #{index+1}"
      end
    end

    private 

    def build_deck
      SUITS.each do |suit|
        13.times do |n|
          @cards << Card.new(n+1, suit[:icon])
        end
      end
    end
    
  end
end