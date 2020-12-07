# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_07_162223) do

  create_table "cards", force: :cascade do |t|
    t.string "side_a"
    t.string "side_b"
    t.integer "deck_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deck_id"], name: "index_cards_on_deck_id"
  end

  create_table "decks", force: :cascade do |t|
    t.string "title"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_decks_on_user_id"
  end

  create_table "game_logs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "deck_id", null: false
    t.integer "score"
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deck_id"], name: "index_game_logs_on_deck_id"
    t.index ["user_id"], name: "index_game_logs_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.integer "deck_id", null: false
    t.string "player_name"
    t.integer "score"
    t.integer "time_limit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deck_id"], name: "index_games_on_deck_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "cumulative_score"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cards", "decks"
  add_foreign_key "decks", "users"
  add_foreign_key "game_logs", "decks"
  add_foreign_key "game_logs", "users"
  add_foreign_key "games", "decks"
end
