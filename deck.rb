require './card.rb'

class Deck
  SUITS = [:♠, :♥, :♦, :♣]
  attr_accessor :cards, :hands

  def initialize
    @cards = []
    @hands = {}
    build_deck
  end

  def deal(hand_size, player_count, burn_card = false)
    puts "--- Dealing ---"
    cards.shift if burn_card

    hand_size.times do
      player_count.times do |n| 
        card = cards.shift
        hands[n] << card if hands[n]
        hands[n] = [card] unless hands[n]
      end 
    end
  end

  def show_hands
    @hands.each do |player, cards|
      puts "Player #{player+1}: hand size #{cards.size}"

      cards.each do |card|
        puts card.to_s    
      end
    end  
  end

  def shuffle
    @cards.shuffle! 
  end

  private 

  def build_deck
    SUITS.each do |suit| 
      13.times do |n|
        @cards << Card.new(n+1, suit)
      end
    end
  end
end