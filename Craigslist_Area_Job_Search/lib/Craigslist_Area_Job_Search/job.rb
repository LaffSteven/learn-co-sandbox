class Craigslist_Area_Job_Search::Job

  attr_accessor :title, :location, :url, :distance_from, :job_description

  @@all = []

  def self.new_from_index_page(page)
    self.new(page.css("h2").attribute("titletextonly").text) #, "#{Craigslist_Area_Job_Search::Scraper.page_url}#{r.css("a").attribute("href").text}", page.css("h3").text, page.css(".position").text)
  end

  def initialize(title = nil, url = nil, location = nil, distance_from = nil, job_description = nil)
    @title = title
    @url = url
    @location = location
    @distance_from = distance_from
    @job_description = job_description
    @@all << self
  end

  def self.all
    @@all
  end

  def title
    @title ||= doc.css("body.section.form.mapcontainer").text
  end
'''
  def url
    @url ||= doc.css("div.c-4.nr.nt ul:nth-child(6) li").text
  end

  def location
    @location ||= doc.css("div.c-4.nr.nt ul:nth-child(10) li:nth-child(1)").text.split("+").join(". Tel: +")
  end

  def distance_from
    @distance_from ||= doc.css("div.c-4.nr.nt ul:nth-child(3) li").text.split(" (pictured)").join("")
  end


  def job_description
    @job_description ||= doc.css("div.c-8.nl.nt > p:nth-child(6)").text
  end
'''
  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end
end

page = "https://newyork.craigslist.org/search/sof?search_distance=10&postal=10549"