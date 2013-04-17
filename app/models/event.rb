class Event < ActiveRecord::Base
  attr_accessible :start_date, :start_time, :duration, :title, :location_id, :food_ids
  has_and_belongs_to_many :foods
  belongs_to :location
  validates :start_date, :start_time, :duration, :title, :location, :foods, :presence => true
end
