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

ActiveRecord::Schema.define(version: 2019_10_11_183834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_inspirations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "inspiration_id"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inspiration_id"], name: "index_favorite_inspirations_on_inspiration_id"
    t.index ["user_id"], name: "index_favorite_inspirations_on_user_id"
  end

  create_table "goals", force: :cascade do |t|
    t.bigint "user_id"
    t.string "objective"
    t.string "difficulty"
    t.string "reward"
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "importance"
    t.string "consequence"
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "inspirations", force: :cascade do |t|
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
  end

  create_table "journal_entries", force: :cascade do |t|
    t.bigint "user_id"
    t.date "date"
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_journal_entries_on_user_id"
  end

  create_table "meditation_sessions", force: :cascade do |t|
    t.bigint "user_id"
    t.date "date"
    t.integer "length"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_meditation_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "password_digest"
  end

  add_foreign_key "favorite_inspirations", "inspirations"
  add_foreign_key "favorite_inspirations", "users"
  add_foreign_key "goals", "users"
  add_foreign_key "journal_entries", "users"
  add_foreign_key "meditation_sessions", "users"
end
