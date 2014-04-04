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

ActiveRecord::Schema.define(version: 20140404003110) do

  create_table "characters", force: true do |t|
    t.integer  "storm_of_swords"
    t.integer  "feast_for_crows"
    t.integer  "breaking_the_law"
    t.integer  "bolton_knows_best"
    t.integer  "best_served_cold"
    t.integer  "in_littlefingers_brothel"
    t.integer  "you_win_or_you_die"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "c1"
    t.integer  "c2"
    t.integer  "c3"
    t.integer  "c4"
    t.integer  "c5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
