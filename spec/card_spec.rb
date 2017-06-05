require './lib/ruby_playing_cards/card.rb'

RSpec.describe RubyPlayingCards::Card do

  describe 'when creating cards' do
    it 'should show card' do
      for val in 2...10 do 
        card = RubyPlayingCards::Card.new(val, 'suit')
        expect(card.to_s).to eq("suit#{val}")
      end
    end
  end

  describe 'when building face cards' do
    it 'should build an ace' do
      card = RubyPlayingCards::Card.new(1, 'suit')
      expect(card.rank).to eq(:A)
    end

    it 'should build a jack' do
      card = RubyPlayingCards::Card.new(11, 'suit')
      expect(card.rank).to eq(:J)
    end

    it 'should build a queen' do
      card = RubyPlayingCards::Card.new(12, 'suit')
      expect(card.rank).to eq(:Q)
    end

    it 'should build a king' do
      card = RubyPlayingCards::Card.new(13, 'suit')
      expect(card.rank).to eq(:K)
    end
  end

end