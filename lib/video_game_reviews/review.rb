class VideoGameReviews::Review
  attr_accessor :name, :score, :review_url, :genre, :page_link, :full_review, :author, :date
  @@reviews = []

  def self.all
    @@reviews
  end

  def save
    @@reviews << self
  end

  def open_in_browser
   system("open '#{review_url}'")
  end

end
