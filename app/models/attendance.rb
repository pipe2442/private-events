class Attendance < ApplicationRecord
    belongs_to :attendance_event, class_name: "Event" 
    belongs_to :attendee, class_name: "User"
end