class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @ducks = Duck.all
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      redirect_to @student
    else
      @ducks = Duck.all
      flash[:error] = @student.errors.full_messages
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.update(student_params)
    if @student.valid?
      redirect_to @student
    else
      @ducks = Duck.all
      flash[:error] = @student.errors.full_messages
      render :new
    end
  end

  private
  def student_params

    params.require(:student).permit(:name, :mod)
  end
end
