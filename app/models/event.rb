class Event < ApplicationRecord
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    has_many :attendances
    has_many :attedees, through: :attendances, source: :attendee
end
