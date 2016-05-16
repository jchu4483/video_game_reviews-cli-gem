# VideoGameReviews

Welcome to Video Game Reviews CLI Gem!

This gem uses Nokogiri to scrape a list of recent video game reviews from http://www.ign.com/games/reviews? It returns the 25 most recent reviews from the site. It returns the title of the review, the author, the date of the review, the first paragraph of the full written review and, if the author has given a score, it will return the numeric score as well. If you'd like to read more about a specific review, the program can open the full review directly in your browser.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'video_game_reviews'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install video_game_reviews

## Usage

TODO: The instructions are explained when you run the user interface. At each point, you will be prompted for confirmation and acceptable inputs will be described to you.
If you'd like to read more about a specific game review, just type the corresponding number in the list that is shown to you. Once you are in an individual review, you can type "yes" or "no" to read the full review in your web browser. To exit out of the program, just type "exit".

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/video_game_reviews. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
