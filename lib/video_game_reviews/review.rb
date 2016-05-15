class VideoGameReviews::Review
  attr_accessor :name, :score, :review_url, :genre, :page_link, :full_review
  @@reviews = []

  def self.all
    @@reviews
  end

  def save
    @@reviews << self
  end

  def open_in_browser
   system("open '#{review.review_url}'")
  end

end

=begin
  def self.scrape_page_link
    @@review_urls.each do |url|

  end

end

new_review.review_url = review.search("div.up-com.grid_7 > ul > li > a").attr("href").value
@review_details = Nokogiri::HTML(open(new_review.review_url))
=end

#review_details.search("div.article-content > p").text
