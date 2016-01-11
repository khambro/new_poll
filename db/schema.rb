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

ActiveRecord::Schema.define(version: 20160109201838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "image_file"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "image_file_four"
    t.string   "image_file_three"
    t.string   "image_file_two"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "response"
    t.string   "response2"
    t.string   "response3"
    t.string   "response4"
    t.boolean  "is_boolean"
    t.string   "image"
    t.integer  "user_id"
    t.string   "image_file"
    t.string   "image_file2"
    t.string   "image_file3"
    t.string   "image_file4"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "tidbit"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  create_table "votes", force: :cascade do |t|
    t.boolean  "answer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
    t.string   "response"
    t.integer  "user_id"
  end

end
