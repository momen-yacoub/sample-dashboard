class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :vendor_id
      t.string :price
      t.integer :quantity

      t.timestamps
    end
  end
end
