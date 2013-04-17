class MapController < ApplicationController
  def index
    @json = Location.all.to_gmaps4rails do |location, marker|
    	marker.infowindow "Hello World"
    end
  end
end
