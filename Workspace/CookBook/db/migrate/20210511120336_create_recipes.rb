class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :chef
      t.text :instructions

      t.timestamps
    end
  end
end
