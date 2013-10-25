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

ActiveRecord::Schema.define(:version => 20131025171648) do

  create_table "art_types", :force => true do |t|
    t.string   "type_of_art"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "contact_person"
    t.string   "phone"
    t.text     "notes"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "piece_id"
  end

  add_index "locations", ["piece_id"], :name => "index_locations_on_piece_id"

  create_table "pieces", :force => true do |t|
    t.string   "name"
    t.string   "art_medium"
    t.date     "date"
    t.string   "number_of_pieces"
    t.string   "number_in_production"
    t.string   "venue"
    t.date     "delivery_date"
    t.date     "removal_date",         :limit => 255
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "location_id"
    t.integer  "art_type_id"
  end

  add_index "pieces", ["location_id"], :name => "index_pieces_on_location_id"

  create_table "productions", :force => true do |t|
    t.integer  "number"
    t.string   "location"
    t.integer  "number_of_editions"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "piece_id"
    t.integer  "location_id"
    t.string   "name"
  end

end
