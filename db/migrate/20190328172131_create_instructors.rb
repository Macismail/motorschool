class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :full_name
      t.string :phone_n
      t.string :email
      t.string :category

      t.timestamps
    end
  end
end
