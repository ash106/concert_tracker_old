class Band < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :concert
end
