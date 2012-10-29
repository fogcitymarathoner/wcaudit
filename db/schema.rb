# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121029013106) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inventory_items", :force => true do |t|
    t.integer  "product_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inventory_transactions", :force => true do |t|
    t.string   "transaction_type"
    t.integer  "invoice_item_id"
    t.integer  "inventory_item_id"
    t.float    "cost"
    t.float    "price"
    t.float    "quantity"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "notes"
  end

  create_table "invoice_items", :force => true do |t|
    t.integer  "invoice_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invoices", :force => true do |t|
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "vendor_id"
  end

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wc11to12", :id => false, :force => true do |t|
    t.string  "name",   :limit => 30
    t.date    "date"
    t.decimal "amount"
    t.integer "id",                   :null => false
  end

  add_index "wc11to12", ["id"], :name => "wc11to12_id_key", :unique => true

  create_table "wc11to12_employees", :force => true do |t|
    t.string  "name",        :limit => 40
    t.string  "state",       :limit => 5
    t.decimal "total"
    t.string  "duties",      :limit => 80
    t.string  "title",       :limit => 50
    t.string  "namedisplay", :limit => 50
    t.integer "counter"
    t.integer "percent"
  end

end
