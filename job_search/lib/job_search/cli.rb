class JobSearch::CLI
  
  attr_accessor :zip_input, :miles_input
  
  def call
    puts "Welcome to the Job Search CLI"
    
    sleep(0.5)
    
    puts "Please enter the zip code:"
    get_zip
    
    sleep(0.5)
    
    puts "Please enter the distance(in miles) from #{self.zip_input} you want to search:"
    get_miles
    
    sleep(0.5)
    
    print_search_area
    sleep(0.25)
    
    searching_for_jobs
    
    list_of_jobs
    
    pick_a_job
    
    goodbye
  end


########    METHODS DEFINED BELOW   ########
  
  
  def searching_for_jobs
    2.times do
      puts "."
      sleep(0.25)
    end
  end
  
  def get_zip
    self.zip_input = gets.strip
  end
  
  def get_miles
    self.miles_input = gets.strip
  end
  
  def print_search_area
    puts "You are searching within #{self.miles_input} miles of the #{self.zip_input} area!"
  end
  
  def list_of_jobs
    puts "Here is a list of jobs in your search area!"
    
    @jobs = JobSearch::JOB.all
  end
  
  def pick_a_job
    puts "------------------"
    input = nil
    while input != "exit"
      puts "Please enter the number of a job, list, or type exit:"
      input = gets.strip.downcase
      case input
      # sample data for testing purposes
      # Will put info in this order
      #   job.url
      #   job.title
      #   job.location
      #   job.description
      when "1"
        puts "Here is the url for Job1"
        puts "Title for Job 1"
        puts "Location for Job 1"
        puts "This is the job description for Job 1"
      when "2"
        puts "Here is the url for Job 2"
        puts "Title for Job 2"
        puts "Location for Job 2"
        puts "This is the job description for Job 2"
      when "list"
        list_of_jobs
      end
    end
  end
  
  def goodbye
    puts "Good luck at your interview!"
  end
  
end