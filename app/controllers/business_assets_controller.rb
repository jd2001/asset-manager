class BusinessAssetsController < ApplicationController
  load_resource
  authorize_resource
  
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
  
  def index
    @business_assets = BusinessAsset.all
  end

  def edit
    @business_asset = BusinessAsset.find(params[:id])
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
