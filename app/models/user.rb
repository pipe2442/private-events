class User < ApplicationRecord
    has_many :events, class_name: "Event", foreign_key: "creator_id", dependent: :destroy
    has_many :attendances, dependent: :destroy
    has_many :attended_events, through: :attendances, source: :event
    validates :name, presence: true, length: { minimum: 4, maximum: 20 }
    EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
    validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: true
    
    validates_uniqueness_of :email
end
