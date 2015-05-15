class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :h_id
      t.string :name
      t.string :description
      t.integer :age
      t.string :photo_url

      t.timestamps null: false
    end
  end
end
