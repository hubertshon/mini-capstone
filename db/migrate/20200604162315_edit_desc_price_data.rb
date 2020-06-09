class EditDescPriceData < ActiveRecord::Migration[6.0]

change_column :products, :description, :text
change_column :products, :price, :decimal, precision: 6, scale: 2


end
