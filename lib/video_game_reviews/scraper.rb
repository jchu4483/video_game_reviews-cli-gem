class VideoGameReviews::Scraper

  def self.scrape_titles

    @doc = Nokogiri::HTML(open("http://www.ign.com/games/reviews?"))
    @reviews = []
    @doc.search("#item-list > div.itemList > div").each do |review_element|
      review = VideoGameReviews::Review.new
      review.name = review_element.search("#item-list > div.itemList > div > div.up-com.grid_7 > div.item-title > h3 > a").text
      @reviews << review.name
    end
  end
end
