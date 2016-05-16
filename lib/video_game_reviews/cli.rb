class VideoGameReviews::CLI

  def call
    VideoGameReviews::Scraper.scrape_titles
    puts "Welcome to Video Games Review CLI! "
    list_reviews
  end

  def main_menu
    puts "Enter a number to get a list of reviews or type 'exit' to exit the program:"
    puts "1. List Reviews"
    puts "2. Exit"

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
    puts "-------------------------------------------------------------------------"
    puts "Here's a list of reviews:"
    puts ""
    VideoGameReviews::Review.all.each.with_index(1) do |review, i|
      puts "#{i}. #{review.name} -  Review Date: #{review.date}"
    end
    get_review
  end

  def get_review
    puts "Enter a number of the review to read more of the review:"
    answer = gets.strip
    if answer.to_i-1 <= VideoGameReviews::Review.all.size
      review = VideoGameReviews::Review.all[answer.to_i-1]
      puts "#{review.name}     Genre: #{review.genre}    Score: #{review.score}    #{review.author}     Date: #{review.date}"
      puts "--------------------------------------------------------------------------------------------------"
      puts review.full_review
      puts "--------------------------------------------------------------------------------------------------"

      puts "Would you like to read the full review in your browser? Type yes or no to get back to the main menu:"
      input = gets.strip
      if ["Y", "YES"].include?(input.upcase)
        review.open_in_browser
        main_menu
      else ["N", "NO"].include?(input.upcase)
        main_menu
      end
    end
  end

  def exit
    puts "Goodbye!"
  end

end
