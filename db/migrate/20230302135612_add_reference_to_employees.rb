class AddReferenceToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :company, foreign_key: true
  end
end
