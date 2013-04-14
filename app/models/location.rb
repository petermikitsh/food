class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name
  has_many :events
  validates :latitute, :longitude, :name, :presence => true
end
