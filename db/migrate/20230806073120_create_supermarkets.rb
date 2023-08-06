class CreateSupermarkets < ActiveRecord::Migration[7.0]
  def change
    create_table :supermarkets do |t|
      t.string :item
      t.integer :invetory
      t.integer :sold
      t.decimal :price
      t.decimal :cost

      t.timestamps
    end
  end
end
