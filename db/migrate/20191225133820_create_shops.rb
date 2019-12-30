class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :title, null: false
      t.date :visit_date
      t.string :image
      t.integer :grade
      t.string :comment

      t.timestamps
    end
  end
end
