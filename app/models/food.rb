class Food < ActiveRecord::Base
  attr_accessible :name
  has_many :events
end
