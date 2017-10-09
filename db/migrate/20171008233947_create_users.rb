class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :email
      t.string :password_digest
      t.string :img_url
      t.boolean :active
      t.boolen :admin
      t.integer :zip_code
      t.integer :id
      t.string :phone

      t.timestamps
    end
  end
end
