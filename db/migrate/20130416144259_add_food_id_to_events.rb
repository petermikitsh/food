class AddFoodIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :food_id, :int
  end
end
