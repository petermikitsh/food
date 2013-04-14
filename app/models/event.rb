class Event < ActiveRecord::Base
  attr_accessible :end, :start, :title
  has_many :foods
  belongs_to :location
  accepts_nested_attributes_for :location
  validates :end, :start, :title, :presence => true
end
