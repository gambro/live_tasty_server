class CreateMeta < ActiveRecord::Migration[5.1]
  def change
    create_table :meta do |t|
      t.string :title, default: '', null: false
      t.string :description, default: '', null: false
      t.text :keywords, default: '', null: false
      t.string :alias, default: '', null: false
      t.references :metables, polymorphic: true, index: true

      t.timestamps
    end
  end
end
