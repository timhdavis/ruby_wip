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

ActiveRecord::Schema.define(version: 20160229182600) do

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_options", force: :cascade do |t|
    t.string   "requirement_type"
    t.string   "requirement"
    t.integer  "importance"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "match_requirements", force: :cascade do |t|
    t.string   "requirement_type"
    t.string   "requirement"
    t.integer  "importance"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "author"
    t.text     "body"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages", ["profile_id"], name: "index_messages_on_profile_id"

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.text     "about_me"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.string   "requirement_type"
    t.string   "requirement"
    t.integer  "importance"
    t.integer  "profile_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "requirements", ["profile_id"], name: "index_requirements_on_profile_id"

end
