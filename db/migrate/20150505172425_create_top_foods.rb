class CreateTopFoods < ActiveRecord::Migration
  def change
    create_table :top_foods do |t|
      t.string :name
      t.string :country

      t.timestamps null: false
    end
  end
end
