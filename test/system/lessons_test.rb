require "application_system_test_case"

class LessonsTest < ApplicationSystemTestCase
  setup do
    @lesson = lessons(:one)
  end

  test "visiting the index" do
    visit lessons_url
    assert_selector "h1", text: "Lessons"
  end

  test "creating a Lesson" do
    visit lessons_url
    click_on "New Lesson"

    fill_in "Duration", with: @lesson.duration
    fill_in "Instructor", with: @lesson.instructor
    fill_in "L date", with: @lesson.l_date
    fill_in "L time", with: @lesson.l_time
    fill_in "N lesson", with: @lesson.n_lesson
    fill_in "User", with: @lesson.user_id
    click_on "Create Lesson"

    assert_text "Lesson was successfully created"
    click_on "Back"
  end

  test "updating a Lesson" do
    visit lessons_url
    click_on "Edit", match: :first

    fill_in "Duration", with: @lesson.duration
    fill_in "Instructor", with: @lesson.instructor
    fill_in "L date", with: @lesson.l_date
    fill_in "L time", with: @lesson.l_time
    fill_in "N lesson", with: @lesson.n_lesson
    fill_in "User", with: @lesson.user_id
    click_on "Update Lesson"

    assert_text "Lesson was successfully updated"
    click_on "Back"
  end

  test "destroying a Lesson" do
    visit lessons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lesson was successfully destroyed"
  end
end
