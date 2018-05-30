class CreateSavedRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_recipes do |t|
      t.integer :user_id
      t.integer :recipe_id
      t.string :title
      t.string :category
      t.timestamps
    end
  end
end
