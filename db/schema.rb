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

ActiveRecord::Schema.define(version: 20131220085522) do

  create_table "answer_for_multiples", force: true do |t|
    t.boolean  "check"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "company_name"
    t.string   "homepage_url"
    t.date     "established_at"
    t.integer  "number_of_members"
    t.string   "mail"
    t.string   "twitter"
    t.string   "slideshare"
    t.string   "vine"
    t.string   "youtube"
    t.string   "logo"
    t.string   "cover"
    t.string   "phone"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.text     "description"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multiple_choice_questions", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
