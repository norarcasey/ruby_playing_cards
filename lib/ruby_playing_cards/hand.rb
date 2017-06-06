module RubyPlayingCards
  class Hand

    attr_accessor :cards, :player

    def initialize(cards, player)
      @cards = cards
      @player = player
    end

    def add_cards(cards)
      @cards << cards
    end

    def size
      @cards.size
    end

    def to_s
      puts "Player #{@player}: "
      @cards.map do |card|
        card.to_s    
      end
    end

  end
end