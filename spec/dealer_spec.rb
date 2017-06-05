require './lib/ruby_playing_cards/dealer.rb'
require './lib/ruby_playing_cards/deck.rb'
require './lib/ruby_playing_cards/hand.rb'

RSpec.describe RubyPlayingCards::Dealer do

  let(:deck) { RubyPlayingCards::Deck.new }
  let(:dealer) {RubyPlayingCards::Dealer }

  context 'cutting the deck' do

    it 'should cut the deck in half' do
      top_card = deck.cards.first.to_s
      cards = dealer.cut! deck

      expect(cards[26].to_s).to eq(top_card)
    end

    it 'should cut the deck where specified' do
      top_card = deck.cards.first.to_s
      CUT_INDEX = 5
      cards = dealer.cut!(deck, CUT_INDEX)
      expect(cards[52-CUT_INDEX].to_s).to eq(top_card)
    end

  end

  context 'dealing' do

    it 'should deal a hand to each player' do
      HAND_SIZE = 3
      PLAYER_COUNT = 7

      hands = dealer.deal deck, HAND_SIZE, PLAYER_COUNT

      expect(hands.size).to eq(PLAYER_COUNT)
      hands.each { |h| expect(h.size).to eq(HAND_SIZE)}
    end
  end

  context 'drawing a card' do

    it 'should remove a single card' do
      top_card = dealer.draw(deck)      
      expect(top_card).to be_truthy 
      expect(top_card.size).to eq(1)
    end
  end

  context 'drawing multiple cards' do
    it 'should remove n number of cards' do
      cards = dealer.draw(deck, 5)      
      expect(cards).to be_truthy 
      expect(cards.size).to eq(5)
    end
  end

  context 'shuffling' do
    it 'should shuffle the cards' do
      unshuffled_cards = deck.cards.dup
      shuffled_cards = dealer.shuffle deck

      expect(shuffled_cards).not_to eq(unshuffled_cards)
    end
  end

end