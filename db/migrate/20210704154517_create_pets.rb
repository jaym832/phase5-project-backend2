class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :animal_type
      t.string :breed
      t.string :secondary
      t.string :age
      t.string :gender
      t.string :image
      t.string :url
      t.string :status
      t.text :description
      t.boolean :rehome

      t.timestamps
    end
  end
end
