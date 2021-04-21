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

ActiveRecord::Schema.define(version: 2021_04_03_140749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "communities", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "icon", null: false
    t.string "banner", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "episodes", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.date "air_date", null: false
    t.string "thumbnail", null: false
    t.bigint "shows_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "video_path", default: "", null: false
    t.index ["shows_id"], name: "index_episodes_on_shows_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.text "body", null: false
    t.bigint "communities_id", null: false
    t.bigint "users_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["communities_id"], name: "index_posts_on_communities_id"
    t.index ["users_id"], name: "index_posts_on_users_id"
  end

  create_table "replies", force: :cascade do |t|
    t.text "body", null: false
    t.bigint "users_id", null: false
    t.bigint "posts_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["posts_id"], name: "index_replies_on_posts_id"
    t.index ["users_id"], name: "index_replies_on_users_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "shows", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.date "release_date", null: false
    t.integer "seasons", default: 0, null: false
    t.bigint "studios_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studios_id"], name: "index_shows_on_studios_id"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name", null: false
    t.text "description", null: false
    t.string "logo", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "episodes", "shows", column: "shows_id"
  add_foreign_key "posts", "communities", column: "communities_id"
  add_foreign_key "posts", "users", column: "users_id"
  add_foreign_key "replies", "posts", column: "posts_id"
  add_foreign_key "replies", "users", column: "users_id"
  add_foreign_key "shows", "studios", column: "studios_id"
end
