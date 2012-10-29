class AddNotesToInventoryTransactions < ActiveRecord::Migration
  def up
    add_column :inventory_transactions, :notes, :string
  end
 
  def down
    remove_column :inventory_transactions, :notes
  end
end
