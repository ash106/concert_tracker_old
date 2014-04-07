class Concert < ActiveRecord::Base
  def self.attended
    where("date <= ?", Time.now).order("date desc")
  end
end
