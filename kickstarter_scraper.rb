require 'nokogiri'
require 'pry'
# require libraries/modules here

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
  #projects:kickstarter.css("li.projects.grid_4")
end