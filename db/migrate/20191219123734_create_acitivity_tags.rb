class CreateAcitivityTags < ActiveRecord::Migration[6.0]
  def change
    create_table :acitivity_tags do |t|
      t.integer :acitivity_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
