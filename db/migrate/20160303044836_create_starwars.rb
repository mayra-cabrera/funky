class CreateStarwars < ActiveRecord::Migration
  def change
    create_table :starwars do |t|
      t.string :character
      t.string :quote
      t.string :planet

      t.timestamps null: false
    end
  end
end
