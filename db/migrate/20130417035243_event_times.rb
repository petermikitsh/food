class EventTimes < ActiveRecord::Migration

  def change
    add_column :events, :start_date, :date
    add_column :events, :start_time, :time
    add_column :events, :duration, :int
    remove_column :events, :start
    remove_column :events, :end
  end

end

