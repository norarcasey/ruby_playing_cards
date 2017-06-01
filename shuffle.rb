require './deck.rb'

deck = Deck.new

5.times do
  deck.shuffle
end

deck.cards.each do |card|
  puts card.to_s
end

deck.deal(5, 2)
puts deck.cards.size
deck.show_hands

deck.deal(1,2)
puts deck.cards.size
puts 'add a card'
deck.show_hands

deck.deal(1,2,true)
puts deck.cards.size
deck.show_hands