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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160205152146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "covoiturages", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.string   "datea"
    t.string   "dater"
    t.string   "lieudep"
    t.integer  "nbplace"
  end

  create_table "lieus", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "url"
    t.string   "adress"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "genre"
    t.string   "city"
    t.string   "description"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "content"
    t.integer  "covoiturage_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
  end

  add_index "reviews", ["covoiturage_id"], name: "index_reviews_on_covoiturage_id", using: :btree

  add_foreign_key "reviews", "covoiturages"
end
