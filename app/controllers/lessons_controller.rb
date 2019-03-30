class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = current_user.lessons
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    require 'lesson_counter'
    @remaining_h = LessonCounter.left_hours(@lesson.n_lesson, @lesson.duration)
    @total_p = LessonCounter.total_price(@lesson.n_lesson)
  end

  # GET /lessons/new
  def new
    @lesson = current_user.lessons.build
  end

  # GET /lessons/1/edit
  def edit; end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = current_user.lessons.build(lesson_params)

    respond_to do |format|
      if @lesson.save
        format.html { redirect_to user_lesson_path(current_user, @lesson), notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }
      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to user_lesson_path(@lesson), notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to user_lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_lesson
    @lesson = current_user.lessons.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def lesson_params
    params.require(:lesson).permit(:l_date, :l_time, :n_lesson, :duration, :instructor, :user_id)
  end
end
