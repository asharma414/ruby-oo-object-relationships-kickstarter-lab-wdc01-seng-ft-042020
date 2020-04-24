class ProjectBacker

    @@all = []
    attr_reader :project, :backer
    def initialize(project, backer)
        @project, @backer = project, backer
        @@all << self
    end

    def self.all
        return @@all
    end
end
