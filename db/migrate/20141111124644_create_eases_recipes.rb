class CreateEasesRecipes < ActiveRecord::Migration
  def change
    create_table :eases_recipes do |t|
      t.belongs_to :ease, index: true
      t.belongs_to :recipe, index: true
    end
  end
end
