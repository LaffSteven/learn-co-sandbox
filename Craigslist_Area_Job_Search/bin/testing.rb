require_relative '../config/environment.rb'

def assign_page
  page = "https://newyork.craigslist.org/search/sof?search_distance=20&postal=10549"
end

def get_doc()
  doc = Nokogiri::HTML(open("#{page}"))
  print_doc
end

def print_doc
  puts doc
end

mypage = assign_page
get_doc(my_page)
