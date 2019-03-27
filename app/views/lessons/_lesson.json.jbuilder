json.extract! lesson, :id, :l_date, :l_time, :n_lesson, :duration, :instructor, :user_id, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
