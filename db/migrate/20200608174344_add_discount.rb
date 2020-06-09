class AddDiscount < ActiveRecord::Migration[6.0]
  add_column :products, :discount, :string
end
