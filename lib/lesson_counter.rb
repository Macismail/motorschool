class LessonsDecorator
  def initialize(numLesson, duration)
    @numLesson = numLesson
    @duration = duration
  end

  def left_hours
    @numLesson - @duration
  end

  def total_price
    @numLesson * 40
  end
end
