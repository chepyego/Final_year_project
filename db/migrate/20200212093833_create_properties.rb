class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.references :account
      t.string :name
      t.string :address
      t.integer :room
      t.string :price
      t.integer :bathrooms
      t.string :photo

      t.timestamps
    end
  end
end
