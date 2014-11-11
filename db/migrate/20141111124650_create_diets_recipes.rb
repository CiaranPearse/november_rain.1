class CreateDietsRecipes < ActiveRecord::Migration
  def change
    create_table :diets_recipes do |t|
      t.belongs_to :diet, index: true
      t.belongs_to :recipe, index: true
    end
  end
end
