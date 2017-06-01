class Card

  FACE_CARDS = { 1 => :A, 13 => :K, 12 => :Q, 11 => :J }
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = FACE_CARDS[rank] || rank
    @suit = suit
  end

  def to_s
    "#{@suit}#{@rank}"  
  end

end