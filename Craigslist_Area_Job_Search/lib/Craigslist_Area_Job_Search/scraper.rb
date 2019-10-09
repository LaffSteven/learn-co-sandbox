class Craigslist_Area_Job_Search::Scraper
  
  attr_accessor :page_url

  def initialize()
    @page_url = "https://newyork.craigslist.org/search/sof?"
  end

  def page_url=(index_page_url)
    '''
      This index_page_url is determined by the CLI
      start method strips for zip and 
    '''
    @page_url = Nokogiri::HTML(open("#{index_page_url}"))
  end

  def scrape_jobs_index
     self.get_page.css("div.rows")
  end

  def make_jobs
    scrape_jobs_index.each do |j|
      Craigslist_Area_Job_Search::job.new_from_index_page(j)
    end
  end
end