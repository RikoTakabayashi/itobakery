class AddPriceToPans < ActiveRecord::Migration[6.1]
  def change
    add_column :pans, :price, :integer
  end
end
