class AddsColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :suppliers, :name, :string
    add_column :suppliers, :email, :string
    add_column :suppliers, :phone_number, :string
  end
end
