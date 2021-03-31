class Attendance < ApplicationRecord\
    belongs_to :event
    belongs to :attendee, class_name: "User"
end
