require './lib/ruby_playing_cards/deck.rb'

RSpec.describe RubyPlayingCards::Deck do

  describe 'when building a deck of cards' do

    it 'should have 52 cards' do
      deck = RubyPlayingCards::Deck.new
      expect(deck.size).to eq(52)
    end
    
  end
end
