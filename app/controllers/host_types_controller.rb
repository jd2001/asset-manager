class HostTypesController < ApplicationController
  def new
    @host_type = HostType.new
  end

  def create
    @host_type = HostType.new(host_type_params)
    if @host_type.save
      redirect_to home_path, notice: "Host type created"
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @host_type = HostType.find(params[:id])
  end

  def update
    @host_type = HostType.find(params[:id])
    if @host_type.update(host_type_params)
      redirect_to home_path, notice: "Host type created"
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def host_type_params
    params.require(:host_type).permit(:name)
  end
end
