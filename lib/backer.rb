require 'pry'

class Backer 
  
  attr_reader :name, :backed_projects, :project
  
  
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  
  def back_project(project)
    backed_projects << project
    project.backers << self
  end
  
end