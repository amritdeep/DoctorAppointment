class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :types
      t.string :breed
      t.string :age
      t.string :weight
      t.date :date_of_last_vist

      t.timestamps null: false
    end
  end
end
