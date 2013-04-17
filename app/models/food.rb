class Food < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :events
  validates :name, :presence => true
end
