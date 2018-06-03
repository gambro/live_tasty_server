class CreateDishDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :dish_details do |t|
      t.references :dish, index: true
      t.references :ingredient, index: true
      t.string :unit, default: 'шт', null: false
      t.float :amount, default: 1, null: false

      t.timestamps
    end
  end
end
