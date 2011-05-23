class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name, :nil => false
      t.string :description, :nil => false
      t.integer :lane_id, :nil => false
      t.timestamps
    end
  end
end
