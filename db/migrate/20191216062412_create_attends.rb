class CreateAttends < ActiveRecord::Migration[6.0]
  def change
    create_table :attends do |t|
      t.integer :user_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
