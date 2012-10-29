class AddMoreDetailsToProducts < ActiveRecord::Migration 
  def up
    add_column :products, :vendor_id, :integer
  end
 
  def down
    remove_column :products, :vendor_id
  end
end
