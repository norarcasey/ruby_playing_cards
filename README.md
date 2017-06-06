# Ruby Playing Cards

[![Build Status](https://travis-ci.org/jcmckay/ruby_playing_cards.png)](https://travis-ci.org/jcmckay/ruby_playing_cards) [![Coverage Status](https://coveralls.io/repos/jcmckay/ruby_playing_cards/badge.png?branch=master)](https://coveralls.io/r/jcmckay/ruby_playing_cards)

## Instalation
Add this line to your application's Gemfile:
```ruby
gem 'ruby_playing_cards'
```
And then execute:
```ruby
$ bundle
```
Or install it yourself as:
```ruby
$ gem install ruby_playing_cards
```

## Example
Here is a simple example of building and dealing a deck of cards.

```ruby
require 'ruby_playing_cards'

include RubyPlayingCards
deck = Deck.new

Dealer.shuffle deck

hands = Dealer.deal deck, hand_size: 5, player_count: 3

hands.each { |hand| puts hand.to_s }
```
