class Role < ActiveRecord::Base
    has_many :auditions
    
    # def auditions
        # no need to write this method. it is inhereted (already working)
    # end

    def actors
        auditions.pluck(:actor)
        # self.auditions.pluck(:actor)
        # self.audition.map{|audition| audition.actor} #another way of answering
        # self.audition.map(&:actor) #another way of answering
    end

    def locations
        auditions.pluck(:location) #Ruby will supply implicit self
        # self.auditions.pluck(:location) 
    end

    def lead
        # All AR method (best practice)
        auditions.where(hired: true).first || 'no actor has been hired for this role'

        ## AR method + Ruby method
        # lead = self.audition.find(|audition| audition.hired)
        # lead ? lead : 'no actor has been hired for this role'

        ## All AR method (best practice)
        # lead = self.audition.find_by(hired: true)
        # lead ? lead : 'no actor has been hired for this role'
    end

    def understudy
        # All AR method (best practice)
        auditions.where(hired: true).second || 'no actor has been hired for understudy for this role'

        # understudy = self.audition.where(hired: true).second
        # understudy ? understudy : 'no actor has been hired for understudy for this role'
    end

end