require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson = user_lessons(:one)
  end

  test 'should get index' do
    get user_lessons_url
    assert_response :success
  end

  test 'should get new' do
    get new_user_lesson_url
    assert_response :success
  end

  test 'should create lesson' do
    assert_difference('Lesson.count') do
      post user_lessons_url, params: { lesson: { duration: @lesson.duration, instructor: @lesson.instructor, l_date: @lesson.l_date, l_time: @lesson.l_time, n_lesson: @lesson.n_lesson, user_id: @lesson.user_id } }
    end

    assert_redirected_to user_lesson_url(Lesson.last)
  end

  test 'should show lesson' do
    get user_lesson_url(current_user, @lesson)
    assert_response :success
  end

  test 'should get edit' do
    get edit_user_lesson_url(current_user, @lesson)
    assert_response :success
  end

  test 'should update lesson' do
    patch user_lesson_url(current_user, @lesson), params: { lesson: { duration: @lesson.duration, instructor: @lesson.instructor, l_date: @lesson.l_date, l_time: @lesson.l_time, n_lesson: @lesson.n_lesson, user_id: @lesson.user_id } }
    assert_redirected_to user_lesson_url(current_user, @lesson)
  end

  test 'should destroy lesson' do
    assert_difference('Lesson.count', -1) do
      delete user_lesson_url(current_user, @lesson)
    end

    assert_redirected_to user_lessons_url
  end
end
