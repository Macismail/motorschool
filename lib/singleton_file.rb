require 'singleton'

class LessonStatus
  include Singleton

  def check_status(remainig_hours)
    true if remainig_hours == 0
  end
end
