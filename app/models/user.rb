class User < ActiveRecord::Base
    def visitors
    has_many :visits
    has_many :visitors, through: :visits, source: 'location'
    end
    
    def owned_locations
        has_many :owned_locations, class_name: 'Location'
    end
end