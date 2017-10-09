class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :url
      t.integer :id
      t.integer :user_id
      t.text :description
      t.datetime :end_time

      t.timestamps
    end
  end
end