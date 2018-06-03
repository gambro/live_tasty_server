class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.references :country
      t.references :dishable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
