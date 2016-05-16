class VideoGameReviews::Scraper

  def self.scrape_titles
    @doc = Nokogiri::HTML(open("http://www.ign.com/games/reviews?"))

    @doc.search("#item-list div.itemList div.itemList-item").each do |review|
      new_review = VideoGameReviews::Review.new
      new_review.name = review.search("h3 a").text.split("\n").collect {|info| info.strip!}.delete_if {|info| info == nil}.join("")
      new_review.score = review.search(".scoreBox-score").text
      new_review.genre = review.search(".item-details span.item-genre").text.strip!
      new_review.review_url = review.search("div.up-com.grid_7 > ul > li > a").attr("href").value
      review_details = Nokogiri::HTML(open(new_review.review_url))
      new_review.full_review = review_details.search("div.article-content > p:nth-child(-n+4)").text
      new_review.author = review_details.search("span > span").text.split("\n").collect {|info| info.strip!}[1]
      new_review.save
    end
  end

end
