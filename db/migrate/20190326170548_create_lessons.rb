class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.date :l_date
      t.time :l_time
      t.integer :n_lesson
      t.integer :duration
      t.string :instructor
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
