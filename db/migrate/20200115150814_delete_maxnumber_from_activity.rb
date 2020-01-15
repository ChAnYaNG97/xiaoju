class DeleteMaxnumberFromActivity < ActiveRecord::Migration[6.0]
  def change
    remove_column :activities, :max_number
  end
end
