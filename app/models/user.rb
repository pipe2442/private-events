class User < ApplicationRecord
    has_many :events, class_name: "Event", foreign_key: "creator_id"
    has_many :attended_events, through: :Attendance, source: :event
    validates_uniqueness_of :email
end
