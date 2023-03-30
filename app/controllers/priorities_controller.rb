class PrioritiesController < ApplicationController
  def new
    @priority = Priority.new
  end

  def create
    @priority = Priority.new(priority_params)
    if @priority.save
      redirect_to home_path, notice: "Priority created"
    else
      render home_path, status: :unprocessable_entity
    end
  end

  def edit
    @priority = Priority.find(params[:id])
  end

  def update
    @priority = Priority.find(params[:id])
    if @priority.update(priority_params)
      redirect_to home_path, notice: "Priority created"
    else
      render home_path, status: :unprocessable_entity
    end
  end

  def destroy
    @priority = Priority.find(params[:id])
    if @priority.destroy
      redirect_to :home_path, notice: "Priority deleted"
    else
      redirect_to home_path
    end
  end

  private

  def priority_params
    params.require(:priority).permit(:name)
  end
end
