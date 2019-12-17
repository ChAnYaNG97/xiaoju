class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :description
      t.text :detail
      t.datetime :start_time
      t.string :location
      t.string :pic_url
      t.integer :max_number

      t.timestamps
    end
  end
end
