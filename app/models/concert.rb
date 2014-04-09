class Concert < ActiveRecord::Base
  validates :venue, :location, :date, presence: true

  def self.attended
    where("date <= ?", Time.now).order("date desc")
  end
end
