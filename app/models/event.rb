class Event < ActiveRecord::Base
  attr_accessible :end, :start, :title, :location_id, :food_ids
  has_and_belongs_to_many :foods
  belongs_to :location
  validates :end, :start, :title, :location, :foods, :presence => true
end
