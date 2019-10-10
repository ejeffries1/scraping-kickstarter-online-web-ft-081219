require 'nokogiri'
require 'pry'
# require libraries/modules here

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  projects = {}
  #projects:kickstarter.css("li.projects.grid_4")
  #title:project.css("h2.bbcard_namestrong a").text
  #image link: project.css("div.project-thumbnail a img").attribute("src").value
  
  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
  end
end