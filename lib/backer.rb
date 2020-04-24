class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(proj_obj)
        ProjectBacker.new(proj_obj, self)
    end

    def backed_projects
        pbs = ProjectBacker.all.select {|pb| pb.backer == self}
        pbs.map {|pb| pb.project}        
    end

end
