class Event < ActiveRecord::Base
  attr_accessible :end, :start, :title
  has_many :foods
  has_one :location
end
