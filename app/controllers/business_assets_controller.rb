class BusinessAssetsController < ApplicationController
  def index
    @page = 'Assets'
    @selected_name = params.dig(:filters, :name)
    @selected_host_type_id = params.dig(:filters, :host_type_id)
    @selected_info_type_id = params.dig(:filters, :info_type_id)
    @selected_priority_id = params.dig(:filters, :priority_id)

    @business_assets = BusinessAsset.all.order(:name)

    @business_assets = @business_assets.filter_by_name(@selected_name) unless params.dig(:filters, :name).blank?
    @business_assets = @business_assets.filter_by_host_type(@selected_host_type_id) unless params.dig(:filters, :host_type_id).blank?
    @business_assets = @business_assets.filter_by_info_type(@selected_info_type_id) unless params.dig(:filters, :info_type_id).blank?
    @business_assets = @business_assets.filter_by_priority(@selected_priority_id) unless params.dig(:filters, :priority_id).blank?
  end
  
  def new
    @business_asset = BusinessAsset.new
  end

  def create
    @business_asset = BusinessAsset.new(business_asset_params)
    if @business_asset.save
      redirect_to :root, notice: "Asset created"
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @business_asset = BusinessAsset.find(params[:id])
    @employees = Employee.where(id: @business_asset.accesses.pluck(:employee_id))
  end

  def update
    @business_asset = BusinessAsset.find(params[:id])
    if @business_asset.update(business_asset_params)
      redirect_to :root, notice: "Asset updated"
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    @business_asset = BusinessAsset.find(params[:id])
    if @business_asset.destroy
      redirect_to :root, notice: "Asset deleted"
    else
      redirect_to :root
    end
  end

  private

  def business_asset_params
    params.require(:business_asset).permit(:asset_code, :cost, :cost_type, :name, :host_type_id, :info_type_id, :priority_id)
  end
end
