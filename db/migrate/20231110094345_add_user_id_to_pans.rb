class AddUserIdToPans < ActiveRecord::Migration[6.1]
  def change
    add_column :pans, :user_id, :integer
  end
end
