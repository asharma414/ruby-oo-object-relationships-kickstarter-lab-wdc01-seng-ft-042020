require_relative "./backer.rb"
require_relative "./project.rb"
require_relative "./project_backer.rb"
require 'pry'

abhi = Backer.new("Abhinav")
davis = Backer.new("Davis")
hoover = Project.new("Hoover Dam")
interstates = Project.new("Interstate Highway System")
gorges = Project.new("Three Gorges Dam")

ProjectBacker.new(hoover, abhi)
ProjectBacker.new(gorges, abhi)

ProjectBacker.new(interstates, davis)
ProjectBacker.new(gorges, davis)

puts ProjectBacker.all.length
#binding.pry

print abhi.backed_projects
