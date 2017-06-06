module RubyPlayingCards

  class Card

    FACE_CARDS = { 1 => :A, 13 => :K, 12 => :Q, 11 => :J }
    attr_accessor :rank, :suit, :value

    def initialize(rank, suit)
      @value = rank
      @rank = FACE_CARDS[rank] || rank
      @suit = suit
    end

    def to_s
      "#{@suit[:icon].to_s}#{@rank}"  
    end

  end

end