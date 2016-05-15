class VideoGameReviews::CLI

  def call
    VideoGameReviews::Scraper.scrape_titles
    puts "Welcome to Video Games Review CLI! "
    main_menu

  end

  def main_menu

    puts "Enter a number to get a list of reviews or to exit:"
    puts "1. List Reviews"
    puts "3. Exit"

    input = nil
    while input != "exit"
      input = gets.strip
      case input
      when "1"
        list_reviews
      when "exit"
        exit
      else
        puts "Invalid input, please try again:"
      end
    end
  end



  def list_reviews
    puts "Here's a list of reviews"
    VideoGameReviews::Review.all.each.with_index(1) do |review, i|
      puts "#{i}. #{review.name}"
    end
    puts "Enter a number of the review to read more of the review:"
    answer = gets.strip
    if answer.to_i-1 <= VideoGameReviews::Review.all.size
      review = VideoGameReviews::Review.all[answer.to_i-1]
      puts "#{review.name}             #{review.genre}          Score:#{review.score}"
      puts "____________________________________________________________________"
      puts review.full_review

      puts "Would you like to read the full review in broswer?"
      input = gets.strip
      if ["Y", "YES"].include?(input.upcase)
        self.open_in_browser
      end
    end
  end

  def exit
    puts "Goodbye!"
  end

end
