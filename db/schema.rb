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

ActiveRecord::Schema.define(:version => 20121017142459) do

  create_table "ec2sizes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ec2terms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ec2types", :force => true do |t|
    t.integer  "ec2size_id"
    t.integer  "ec2term_id"
    t.integer  "ec2util_id"
    t.float    "upfront_cost"
    t.float    "hourly_cost"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "ec2types", ["ec2size_id"], :name => "index_ec2types_on_ec2size_id"
  add_index "ec2types", ["ec2term_id"], :name => "index_ec2types_on_ec2term_id"
  add_index "ec2types", ["ec2util_id"], :name => "index_ec2types_on_ec2util_id"

  create_table "ec2utils", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "environment_nodes", :force => true do |t|
    t.integer  "environment_id"
    t.integer  "node_type_id"
    t.integer  "quantity"
    t.integer  "ec2type_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "environment_nodes", ["ec2type_id"], :name => "index_environment_nodes_on_ec2type_id"
  add_index "environment_nodes", ["environment_id"], :name => "index_environment_nodes_on_environment_id"
  add_index "environment_nodes", ["node_type_id"], :name => "index_environment_nodes_on_node_type_id"

  create_table "environments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.float    "usage_rate",         :default => 1.0
    t.float    "outbound_bandwidth", :default => 0.0
  end

  create_table "node_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
