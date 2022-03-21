class Audition < ActiveRecord::Base
    belongs_to :role

    # def role
        # no need to write this method. it is inhereted (already working)
    # end

    def call_back
        update hired: true
    end

end