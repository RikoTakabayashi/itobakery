class AddOverallToPans < ActiveRecord::Migration[6.1]
  def change
    add_column :pans, :overall, :integer
  end
end
