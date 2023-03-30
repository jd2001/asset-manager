class InfoTypesController < ApplicationController
  def new
    @info_type = InfoType.new
  end

  def create
    @info_type = InfoType.new(info_type_params)
    if @info_type.save
      redirect_to home_path, notice: "Info type created"
    else
      render home_path, status: :unprocessable_entity
    end
  end

  def edit
    @info_type = InfoType.find(params[:id])
  end

  def update
    @info_type = InfoType.find(params[:id])
    if @info_type.update(info_type_params)
      redirect_to home_path, notice: "Info type created"
    else
      render home_path, status: :unprocessable_entity
    end
  end

  def destroy
    @info_type = InfoType.find(params[:id])
    if @info_type.destroy
      redirect_to :home_path, notice: "Info Type deleted"
    else
      redirect_to home_path
    end
  end

  private

  def info_type_params
    params.require(:info_type).permit(:name)
  end
end
