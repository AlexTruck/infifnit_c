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

ActiveRecord::Schema.define(version: 20150602011130) do

  create_table "banks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banks_rates", id: false, force: :cascade do |t|
    t.integer "bank_id"
    t.integer "rate_id"
  end

  add_index "banks_rates", ["bank_id"], name: "index_banks_rates_on_bank_id"
  add_index "banks_rates", ["rate_id"], name: "index_banks_rates_on_rate_id"

  create_table "rates", force: :cascade do |t|
    t.string   "currency"
    t.string   "buy"
    t.string   "sale"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end