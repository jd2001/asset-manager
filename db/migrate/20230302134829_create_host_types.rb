class CreateHostTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :host_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
