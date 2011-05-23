class CreateLanes < ActiveRecord::Migration
  def change
    create_table :lanes do |t|
      t.string :name, :nil => false
      t.integer :previous_lane_id
      t.timestamps
    end
  end
end
