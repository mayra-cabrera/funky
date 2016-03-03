class CreateSuperheroes < ActiveRecord::Migration
  def change
    create_table :superheroes do |t|
      t.string :name
      t.string :power
      t.timestamps null: false
    end
  end
end
