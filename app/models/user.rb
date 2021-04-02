class User < ApplicationRecord
    has_many :events, class_name: "Event", foreign_key: "creator_id"
    has_many :attendances
    has_many :attendance_events, through: :attendances, source: :event
    
    validates_uniqueness_of :email
end
