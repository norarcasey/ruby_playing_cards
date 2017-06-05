module RubyPlayingCards
  class Dealer

    class << self
      
      def cut!(deck, index=26)
        top = deck.cards.shift(index)
        deck.cards = deck.cards + top
      end

      def deal(deck, hand_size, player_count)
        hands = []
        card_total = hand_size * player_count

        player_count.times do |player_index|
          hand = build_hand(deck, player_index, card_total, player_count)
          hands << hand
        end 
        
        deck.cards.shift(card_total)
        hands
      end

      def draw(deck, card_count=1)
        deck.cards.shift card_count
      end

      def shuffle(deck)
        deck.cards.shuffle!
      end

      private 
      def build_hand(deck, player_index, card_count, player_count)
        cards = []
        (player_index+1).step(card_count,player_count) { |deck_index| cards << deck.cards[deck_index-1]}
        Hand.new(cards, "player#{player_index+1}")
      end

    end
  end
end