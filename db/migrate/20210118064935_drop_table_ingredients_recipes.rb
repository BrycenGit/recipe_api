class DropTableIngredientsRecipes < ActiveRecord::Migration[5.2]
  def change
    drop_table :ingredients_recipes
  end
end
