class CreateJoinTableDishLabel < ActiveRecord::Migration[5.1]
  def change
    create_join_table :dishes, :labels, id: false do |t|
      # t.index [:dish_id, :label_id]
      t.index [:label_id, :dish_id]
    end
  end
end
