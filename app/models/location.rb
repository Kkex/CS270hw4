class Location < ActiveRecord::Base
    has_and_belongs_to_many :events
    
    def visitors
    has_many :visits
    has_many :visitors, through: :visits, source: 'user'
    end
    
    def owner
    belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
    end
end