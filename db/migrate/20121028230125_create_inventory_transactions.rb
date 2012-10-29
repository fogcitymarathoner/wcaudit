class CreateInventoryTransactions < ActiveRecord::Migration
  def change
    create_table :inventory_transactions do |t|
      t.string :transaction_type
      t.integer :invoice_item_id
      t.integer :inventory_item_id
      t.float :cost
      t.float :price
      t.float :quantity

      t.timestamps
    end
  end
end
