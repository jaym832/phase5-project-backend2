class CreateRehomings < ActiveRecord::Migration[6.1]
  def change
    create_table :rehomings do |t|
      t.integer :user_id
      t.integer :pet_id
      t.string :status
      t.timestamps
    end
  end
end
