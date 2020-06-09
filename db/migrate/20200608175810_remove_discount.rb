class RemoveDiscount < ActiveRecord::Migration[6.0]
  remove_column :products, :discount, :string
end
