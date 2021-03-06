class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :attendee

  scope :past_events, -> { where('date < ?', Date.today) }
  scope :future_events, -> { where('date >= ?', Date.today) }
end
