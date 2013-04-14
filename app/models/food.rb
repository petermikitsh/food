class Food < ActiveRecord::Base
  attr_accessible :name
  has_many :events
  validates :name, :presence => true
end
