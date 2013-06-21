class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :goal
      t.date :due_date
      t.integer :list_id 
      t.timestamps
    end
  end
end
