class CreateIngredientsRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients_recipes, id: false do |t|
      t.belongs_to :ingredients
      t.belongs_to :recipes
    end
  end
end
