class User < ApplicationRecord
    has_many :events, class_name: "Event", foreign_key: "creator_id"
    
    validates_uniqueness_of :email
end
