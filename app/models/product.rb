class Product < ActiveRecord::Base
  attr_accessible :name, :price, :vendor_id
end
