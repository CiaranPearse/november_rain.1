class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.string :name
      t.text :description
      t.string :icon
      t.string :image

      t.timestamps
    end
  end
end
