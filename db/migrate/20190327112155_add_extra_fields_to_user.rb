class AddExtraFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :f_name, :string
    add_column :users, :l_name, :string
    add_column :users, :phone_n, :string
  end
end
