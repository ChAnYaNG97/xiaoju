class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :nickname
      t.string :email
      t.string :photo_url
      t.date :birthday
      t.string :tel

      t.timestamps
    end
  end
end
