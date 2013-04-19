class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name
  has_many :events
  validates :latitude, :longitude, :name, :presence => true
  acts_as_gmappable
end
