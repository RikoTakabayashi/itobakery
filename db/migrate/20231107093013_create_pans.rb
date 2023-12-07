class CreatePans < ActiveRecord::Migration[6.1]
  def change
    create_table :pans do |t|
      t.string :name
      t.string :kinds
      t.string :about

      t.timestamps
    end
  end
end
