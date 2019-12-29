class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :title
      t.string :image
      t.string :grade
      t.string :comment

      t.timestamps
    end
  end
end
