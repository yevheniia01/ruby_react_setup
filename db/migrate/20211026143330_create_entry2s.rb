class CreateEntry2s < ActiveRecord::Migration[6.1]
  def change
    create_table :entry2s do |t|
      t.string :meal_type
      t.integer :calories
      t.integer :proteins
      t.integer :carbs
      t.integer :fats

      t.timestamps
    end
  end
end
