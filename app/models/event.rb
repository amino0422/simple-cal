class Event < ApplicationRecord
  def start_time
    self.start
  end

  validates :title, presence: true

  belongs_to :user, optional: true
end