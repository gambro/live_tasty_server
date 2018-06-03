class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :title, default: '', null: false
      t.string :alt, default: '', null: false
      t.string :file
      t.references :imagable, polymorphic: true

      t.timestamps
    end
  end
end
