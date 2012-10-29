class CreateInventoryItems < ActiveRecord::Migration
  def change
    create_table :inventory_items do |t|
      t.integer :product_id

      t.timestamps
    end
  end
end
