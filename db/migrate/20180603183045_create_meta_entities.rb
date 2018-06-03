class CreateMetaEntities < ActiveRecord::Migration[5.1]
  def change
    create_table :meta_entities do |t|
      t.string :title
      t.string :description
      t.text :keywords
      t.string :alias
      t.references :entitable, polymorphic: true

      t.timestamps
    end
  end
end
