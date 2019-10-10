class JobSearch::JOB
  
  attr_accessor :title, :location, :description, :url
  
  @@all = []
  
  def initialize()
    @@all << self
  end
  
  def self.all
    #temporary data
    #puts <<-DOC.gsub /^\s/, ""
    #  1. Senior Java Developer - New York, NY - 50 miles
    #  2. Junior Ruby Coder - White Plains, NY - 15 miles
    #DOC
    
    # More Abstraction in the sample data
    job_1 = self.new
    job_1.title = "Senior Java Developer"
    job_1.location = "New York, NY"
    job_1.description = "This is the list of things that a senior java developer needs to do"
    job_1.url = "newyork.craigslist.org/Job_1_Page"
    
    job_2 = self.new
    job_2.title = "Junior Ruby Coder"
    job_2.location = "White Plains, NY"
    job_2.description = "As a Junior Ruby Coder,you will be doing this..."
    job_2.url = "newyork.craigslist.org/Job_2_Page"
    
    
    ####
    # will put back in once working
    # @@all
    ####
  end
  
end