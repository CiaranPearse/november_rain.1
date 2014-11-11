class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :image_credit
      t.string :yeild
      t.string :prep
      t.string :cook
      t.string :total
      t.text :ingredients
      t.string :diet
      t.string :course
      t.string :ease
      t.string :categories
      t.string :tags
      t.integer :ratings
      t.integer :comments
      t.integer :facebook
      t.integer :twitter
      t.integer :pinterest
      t.integer :stumbleupon
      t.integer :gplus
      t.string :author
      t.string :added_on

      t.timestamps
    end
  end
end
