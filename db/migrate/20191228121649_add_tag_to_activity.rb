class AddTagToActivity < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :tag, :integer
  end
end
