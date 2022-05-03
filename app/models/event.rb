class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :event_attendances, foreign_key: :attended_event, dependent: :delete_all
  has_many :attendees, through: :event_attendances

  validates :name, presence: true
  validates :creator, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :description, presence: true

  scope :past, -> { where("date <= ?", Time.now) }
  scope :future, -> { where("date > ?", Time.now) }
end
