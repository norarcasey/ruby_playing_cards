lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_playing_cards/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_playing_cards"
  spec.version       = RubyPlayingCards::VERSION
  spec.authors       = ["Justin McKay"]
  spec.email         = ["justinmckay16@gmail.com"]
  spec.description   = %q{Basic playing cards}
  spec.summary       = %q{Basic playing cards for playing with cards}
  spec.homepage      = "https://github.com/jcmckay/ruby_playing_cards"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 0'
  spec.add_development_dependency 'rspec', '~> 0'
end