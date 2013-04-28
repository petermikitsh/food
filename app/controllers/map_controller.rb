class MapController < ApplicationController
  def index

  if (params[:start_date] && !params[:start_date].empty? &&
  		params[:end_date] && !params[:end_date].empty?)
  		@q_start_date = Date.strptime(params[:start_date], "%m/%d/%Y")
  		@q_end_date = Date.strptime(params[:end_date], "%m/%d/%Y")
		@query = Event.where(:start_date => (@q_start_date..@q_end_date))
	else
		@query = Event.where(:start_date => Date.today)
    @q_start_date = Date.today
    @q_end_date = Date.today
	end

  if (@query == [])
    @notice = 'No events found for the specified time frame.'
  end

  @json = @query.to_gmaps4rails do |event, marker|
  	marker.infowindow render_to_string :partial => "marker",
                                       :locals => {:query => @query.where(:location_id => event.location) }
  end

  @event = Event.new

  end
end
