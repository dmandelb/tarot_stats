# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_07_164341) do
  create_table "cards", force: :cascade do |t|
    t.integer "suit_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suit_id"], name: "index_cards_on_suit_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks_suits", force: :cascade do |t|
    t.integer "deck_id", null: false
    t.integer "suit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deck_id"], name: "index_decks_suits_on_deck_id"
    t.index ["suit_id"], name: "index_decks_suits_on_suit_id"
  end

  create_table "drawers", force: :cascade do |t|
    t.integer "deck_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["deck_id"], name: "index_drawers_on_deck_id"
    t.index ["user_id"], name: "index_drawers_on_user_id"
  end

  create_table "readings", force: :cascade do |t|
    t.integer "spread_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spread_id"], name: "index_readings_on_spread_id"
    t.index ["user_id"], name: "index_readings_on_user_id"
  end

  create_table "slots", force: :cascade do |t|
    t.integer "card_id"
    t.string "slottable_type"
    t.integer "slottable_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_slots_on_card_id"
    t.index ["slottable_type", "slottable_id"], name: "index_slots_on_slottable"
  end

  create_table "spreads", force: :cascade do |t|
    t.string "name"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_spreads_on_user_id"
  end

  create_table "suits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cards", "suits"
  add_foreign_key "decks_suits", "decks"
  add_foreign_key "decks_suits", "suits"
  add_foreign_key "drawers", "decks"
  add_foreign_key "drawers", "users"
  add_foreign_key "readings", "spreads"
  add_foreign_key "readings", "users"
  add_foreign_key "slots", "cards"
  add_foreign_key "spreads", "users"
end
