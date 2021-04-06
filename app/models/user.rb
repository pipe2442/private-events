class User < ApplicationRecord
<<<<<<< HEAD
    has_many :events, class_name: "Event", foreign_key: "creator_id", dependent: :destroy
    has_many :attendances, dependent: :destroy
    has_many :attended_events, through: :attendances, source: :event
    
    validates_uniqueness_of :email
=======
  has_many :events, class_name: 'Event', foreign_key: 'creator_id'
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event

  validates_uniqueness_of :email
>>>>>>> testing
end
