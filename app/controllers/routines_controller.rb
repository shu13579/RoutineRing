class RoutinesController < ApplicationController
  def index
    @routines = Routine.all
  end

  def show
    @routine = Routine.find(params[:id])
  end

  def new
    @routine = Routine.new()
  end

  def create
    @routine = Routine.new(routine_params)

    if @routine.save
      redirect_to @routine
    else
      render :new, status: :unprocessble_entity
    end
  end

  def edit
    @routine = Routine.find(params[:id])
  end

  def update
    @routine = Routine.find(params[:id])

    if @routine.update(routine_params)
      redirect_to @routine
    else
      render :new, status: :unprocessble_entity
    end
  end

  def destroy
    @article = Routine.find(params[:id])
    @article.destroy

    redirect_to routines_path, status: :see_other
  end

  private
    def routine_params
      params.require(:routine).permit(:title, :counter, :completed)
    end
end
