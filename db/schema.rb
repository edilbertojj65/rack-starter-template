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

ActiveRecord::Schema.define(version: 2021_08_11_182727) do

  create_table "cards", force: :cascade do |t|
    t.string "vaccine_name"
    t.integer "dose"
    t.string "date_vaccine"
    t.string "lot_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id"
    t.index ["users_id"], name: "index_cards_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "lcd"
    t.string "name"
    t.string "last_name"
    t.string "birth_of_date"
    t.string "clinic_site"
    t.string "viruses_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
