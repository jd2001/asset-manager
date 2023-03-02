class CreateBusinessAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :business_assets do |t|
      t.string :asset_code
      t.decimal :cost
      t.string :cost_type
      t.string :name

      t.timestamps
    end
  end
end
