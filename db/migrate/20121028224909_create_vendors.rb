class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
