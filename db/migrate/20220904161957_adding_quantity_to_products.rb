class AddingQuantityToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :name, :email, :phone_number
  end
end
