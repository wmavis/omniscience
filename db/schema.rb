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

ActiveRecord::Schema.define(version: 20150426223023) do

  create_table "host_results", force: :cascade do |t|
    t.string   "output"
    t.integer  "exit_status"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "run_id"
    t.integer  "host_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "host_results", ["host_id"], name: "index_host_results_on_host_id"
  add_index "host_results", ["run_id"], name: "index_host_results_on_run_id"

  create_table "hosts", force: :cascade do |t|
    t.string   "hostname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hosts_tags", id: false, force: :cascade do |t|
    t.integer "host_id", null: false
    t.integer "tag_id",  null: false
  end

  create_table "runs", force: :cascade do |t|
    t.string   "command"
    t.string   "filter"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "tagname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
