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

ActiveRecord::Schema.define(version: 2020_02_08_133954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "premia", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_premia_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_premia_on_resource_type_and_resource_id"
  end

  create_table "sensor_infos", force: :cascade do |t|
    t.jsonb "data"
    t.datetime "run_date"
    t.boolean "manual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_premia", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "premium_id"
    t.index ["premium_id"], name: "index_users_premia_on_premium_id"
    t.index ["user_id", "premium_id"], name: "index_users_premia_on_user_id_and_premium_id"
    t.index ["user_id"], name: "index_users_premia_on_user_id"
  end

  add_foreign_key "sensor_infos", "users"
end
