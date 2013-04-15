class Event < ActiveRecord::Base
  attr_accessible :end, :start, :title, :location_id
  has_many :foods
  belongs_to :location
  validates :end, :start, :title, :location, :presence => true
end
