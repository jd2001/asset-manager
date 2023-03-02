class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
