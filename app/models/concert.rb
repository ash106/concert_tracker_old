class Concert < ActiveRecord::Base
  validates :venue, :location, :date, presence: true

  has_many :bands, dependent: :destroy

  def self.attended
    where("date <= ?", Time.now).order("date desc")
  end
end
