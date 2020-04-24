class Project
    attr_reader :title
    def initialize(title)
        @title  = title
    end

    def add_backer(back_obj)
        ProjectBacker.new(self, back_obj)
    end

    def backers
        pbs = (ProjectBacker.all.select {|pb| pb.project == self})
        pbs.map{|pb| pb.backer}
    end


end
