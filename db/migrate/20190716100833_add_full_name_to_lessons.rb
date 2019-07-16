class AddFullNameToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :full_name, :string
  end
end
