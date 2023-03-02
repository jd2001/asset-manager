class AddReferencesToBusinessAssets < ActiveRecord::Migration[7.0]
  def change
    add_reference :business_assets, :host_type, foreign_key: true
    add_reference :business_assets, :info_type, foreign_key: true
    add_reference :business_assets, :priority, foreign_key: true
  end
end
