class AccessesController < ApplicationController
  def create
    @access = Access.new(access_params)
    if @access.save
      redirect_to edit_business_asset_path(access_params[:business_asset_id]), notice: "Employee added"
    else
      render edit_business_asset_path(access_params[:business_asset_id]), status: :unprocessable_entity
    end
  end

  def destroy
    @access = Access.find(params[:id])
    if @access.destroy
      redirect_to edit_business_asset_path(@access.business_asset), notice: "Employee removed"
    else
      redirect_to edit_business_asset_path(@access.business_asset)
    end
  end

  private

  def access_params
    params.require(:access).permit(:business_asset_id, :employee_id)
  end
end