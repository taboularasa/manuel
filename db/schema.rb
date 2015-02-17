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

ActiveRecord::Schema.define(version: 20150217053751) do

  create_table "executions", force: :cascade do |t|
    t.integer  "test_run_id"
    t.integer  "step_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "executions", ["step_id"], name: "index_executions_on_step_id"
  add_index "executions", ["test_run_id"], name: "index_executions_on_test_run_id"

  create_table "features", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "scenarios", force: :cascade do |t|
    t.string   "title"
    t.integer  "feature_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "scenarios", ["feature_id"], name: "index_scenarios_on_feature_id"

  create_table "steps", force: :cascade do |t|
    t.string   "title"
    t.integer  "scenario_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "steps", ["scenario_id"], name: "index_steps_on_scenario_id"

  create_table "test_plans", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_runs", force: :cascade do |t|
    t.integer  "test_plan_id"
    t.integer  "feature_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "test_runs", ["feature_id"], name: "index_test_runs_on_feature_id"
  add_index "test_runs", ["test_plan_id"], name: "index_test_runs_on_test_plan_id"

end
