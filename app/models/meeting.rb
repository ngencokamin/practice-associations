class Meeting < ApplicationRecord

  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers
  
  validates :title, presence: true
  validates :location, presence: true
  # validates :time, future: true
  #  I tried to do the future validation but couldn't figure it out

end
