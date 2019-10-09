class Craigslist_Area_Job_Search::CLI

  def call
    
    puts "Welcome to the Software Job Search Assistant"
    start
    
    Craigslist_Area_Job_Search::Scraper.new(@index_page_url).make_jobs
    
    
  end

  def start
    get_inputs
  end
  
  def continue
    
  end
  
  def get_inputs
    puts ""
    puts "Which zip code would you like to search"
    @zip_input = gets.strip
    puts "Plese enter the search distance in miles(max 200)"
    @miles_input = gets.strip
    
    @index_page_url = "https://newyork.craigslist.org/search/sof?search_distance=#{@zip_input}&postal=#{@miles_input}"
  end
  
  def print_job(job)
    puts ""
    puts "----------- #{job.title} -----------"
    puts ""
    puts "Location:           #{job.hood}"
    puts "Distance            #{job.distance_from}"
    puts "Link:               #{restaurant.website_url}"
    puts ""
    puts "---------------Description--------------"
    puts ""
    puts "#{job.job_description}"
    puts ""
  end

  def print_jobs
    puts ""
    puts "---------- Jobs within #{miles_input} miles from #{zip_input} ----------"
    puts ""
    Craigslist_Area_Job_Search::Job.all.each do |job|
      puts "#{job.title} - #{job.location} - #{job.url}"
    end
  end

end