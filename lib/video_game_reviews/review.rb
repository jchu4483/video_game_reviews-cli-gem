class VideoGameReviews::Review
  attr_accessor :name, :score, :url
  @@reviews

  def self.scrape_titles
    @doc = Nokogiri::HTML(open("http://www.ign.com/games/reviews?"))

    titles = @doc.search("#item-list div.itemList div.itemList-item").each do |review|
      binding.pry
      new_review = VideoGameReviews::Review.new
      new_review.name = review.search("h3 a").text.split("\n").collect {|info| info.strip!}.delete_if {|info| info == nil}

    end
  end

end
