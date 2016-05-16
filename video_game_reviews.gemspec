# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'video_game_reviews/version'

Gem::Specification.new do |spec|
  spec.name          = "video_game_reviews"
  spec.version       = VideoGameReviews::VERSION
  spec.authors       = ["jchu4483"]
  spec.email         = ["jchu4483@gmail.com"]

  spec.summary       = %q{Uses Nokogiri to return a list of video game reviews from ign.com/games/reviews}
  spec.description   = %q{}

  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin/video_game_reviews"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "require_all", "~> 1.3", ">= 1.3.3"
end



#["lib/video_game_reviews/cli.rb", "lib/video_game_reviews/review.rb", "lib/video_game_reviews/scraper.rb", "lib/video_game_reviews/version.rb", "lib/video_game_reviews.rb"]
