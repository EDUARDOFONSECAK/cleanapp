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

ActiveRecord::Schema.define(version: 20181016165040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.date "admission"
    t.date "departure"
    t.bigint "residential_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["residential_id"], name: "index_administrators_on_residential_id"
  end

  create_table "historicals", force: :cascade do |t|
    t.string "id_user"
    t.float "collection"
    t.date "month"
    t.float "administration_value"
    t.float "discount"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_historicals_on_user_id"
  end

  create_table "machines", force: :cascade do |t|
    t.float "accumulated"
    t.integer "inserted"
    t.string "id_user"
    t.date "month"
    t.bigint "historical_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["historical_id"], name: "index_machines_on_historical_id"
  end

  create_table "neighbors", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.bigint "residential_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["residential_id"], name: "index_neighbors_on_residential_id"
  end

  create_table "residentials", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "name_bank"
    t.float "bank_account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_users", force: :cascade do |t|
    t.string "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_type_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "type"
    t.string "department"
    t.integer "points"
    t.bigint "residential_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["residential_id"], name: "index_users_on_residential_id"
  end

  add_foreign_key "administrators", "residentials"
  add_foreign_key "historicals", "users"
  add_foreign_key "machines", "historicals"
  add_foreign_key "neighbors", "residentials"
  add_foreign_key "type_users", "users"
  add_foreign_key "users", "residentials"
end
