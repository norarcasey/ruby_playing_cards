module RubyPlayingCards
  
  class Deck
    SUITS = [:♠, :♥, :♦, :♣]
    attr_accessor :cards

    def initialize
      @cards = []
      build_deck
    end

    def shuffle
      @cards.shuffle! 
    end

    def cut!(index=26)
      top = @cards.shift(index)
      @cards = @cards + top
    end

    def deal(hand_size, player_count)
      puts "--- Dealing ---"
      hands = []
      card_total = hand_size * player_count

      player_count.times do |player_index|
        hand = build_hand(player_index, card_total, player_count)
        hand.to_s
        hands << hand
      end 
      
      @cards.shift(card_total)
      hands
    end

    def draw(card_count)
      @cards.shift card_count
    end

    def to_s
      @cards.each_with_index do |card, index|
        puts "#{card.suit}#{card.rank} -- #{index}"
      end
    end

    private 

    def build_deck
      SUITS.each do |suit| 
        13.times do |n|
          @cards << Card.new(n+1, suit)
        end
      end
    end

    def build_hand(player_index, card_count, player_count)
      cards = []
      (player_index+1).step(card_count,player_count) { |card_index| cards << @cards[card_index-1]}
      Hand.new(cards, "player#{player_index+1}")
    end
    
  end
end