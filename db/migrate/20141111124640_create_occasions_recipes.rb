class CreateOccasionsRecipes < ActiveRecord::Migration
  def change
    create_table :occasions_recipes do |t|
      t.belongs_to :occasion, index: true
      t.belongs_to :recipe, index: true
    end
  end
end
