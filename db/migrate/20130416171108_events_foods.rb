class EventsFoods < ActiveRecord::Migration
  def change
    create_table :events_foods, :id => false do |t|
      t.integer :event_id
      t.integer :food_id
    end
  end
end
