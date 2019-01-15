class DucksController < ApplicationController

  def index
    @ducks = Duck.all
  end

  def show
    @duck = Duck.find(params[:id])
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create
    @duck = Duck.create(duck_params)
    if @duck.valid?
      redirect_to @duck
    else
      flash[:error] = @duck.errors.full_messages
      render :new
    end
  end

  def edit
    @duck = Duck.find(params[:id])
    @students = Student.all
  end

  def update
    @duck = Duck.update(duck_params)
    if @duck.valid?
      redirect_to @duck
    else
      flash[:error] = @duck.errors.full_messages
      render :new
    end
  end

  private
  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end
  
end
