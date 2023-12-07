class AddImageToPans < ActiveRecord::Migration[6.1]
  def change
    add_column :pans, :image, :string
  end
end
