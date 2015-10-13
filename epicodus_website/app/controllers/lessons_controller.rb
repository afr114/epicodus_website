class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
  end

  def new
    @syllabus = Syllabus.find(params[:syllabus_id])
    @lesson = @syllabus.lessons.new
  end

  def create
    @syllabus = Syllabus.find(params[:syllabus_id])
    @lesson = @syllabus.lessons.new(lesson_params)
    if @lesson.save
      redirect_to syllabuses_path(@lesson.syllabus)
   else
     render :new
    end
  end

  def show
    @syllabus = Syllabus.find(params[:syllabus_id])
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @syllabus = Syllabus.find(params[:syllabus_id])
    @lesson = @syllabus.lessons.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to lessons_path
    else
      render :edit
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to lessons_path
  end

  private
  def lesson_params
    params.require(:lesson).permit(:name, :content)
  end

end
