class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :address
      t.date :date_found
      t.string :last_name

      t.timestamps
    end
  end
end
