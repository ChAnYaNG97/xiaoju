class AddHostToActivity < ActiveRecord::Migration[6.0]
  def change
    # add_column :table_name, :column_name, :type

    ## host 谁发起的这个活动
    add_column :activities, :host, :integer
  end
end
