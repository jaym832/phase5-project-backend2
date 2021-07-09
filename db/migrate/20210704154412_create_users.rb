class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :role
      t.string :f_name
      t.string :l_name
      t.integer :zipcode

      t.timestamps
    end
  end
end
