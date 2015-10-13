class SyllabusesController < ApplicationController

def index
  @syllabuses = Syllabus.all
end

def new
  @syllabus = Syllabus.new
end

def create
  @syllabus = Syllabus.new(syllabus_params)
  if @syllabus.save
    redirect_to syllabuses_path
 else
   render :new
  end
end

def show
  @syllabus = Syllabus.find(params[:id])
  @lesson = @syllabus.lessons.new
end

def edit
  @syllabus = Syllabus.find(params[:id])
end

def update
  @syllabus = Syllabus.find(params[:id])
  if @syllabus.update(syllabus_params)
    redirect_to syllabuses_path
  else
    render :edit
  end
end

def destroy
  @syllabus = Syllabus.find(params[:id])
  @syllabus.destroy
  redirect_to syllabuses_path
end

private
def syllabus_params
  params.require(:syllabus).permit(:name, :content)
end

end
