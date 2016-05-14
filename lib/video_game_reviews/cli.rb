class VideoGameReviews::CLI

  def call
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
    VideoGameReviews::Review.scrape_titles
  end

  def exit
    puts "Goodbye!"
  end

end
