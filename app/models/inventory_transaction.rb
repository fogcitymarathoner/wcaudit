class InventoryTransaction < ActiveRecord::Base
  attr_accessible :cost, :inventory_item_id, :invoice_item_id, :price, :quantity, :transaction_type, :notes
end
