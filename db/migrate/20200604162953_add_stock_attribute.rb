class AddStockAttribute < ActiveRecord::Migration[6.0]

add_column :products, :in_stock, :boolean

end
