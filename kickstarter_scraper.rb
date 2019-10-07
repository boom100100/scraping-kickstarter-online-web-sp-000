# require libraries/modules here
require 'nokogiri'


def create_project_hash
  # write your code here

  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  # Iterate through the projects
  kickstarter.css("li.project.grid_4").each do |project|
    projects[project] = {}
  end

  projects
end
