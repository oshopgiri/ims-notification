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

ActiveRecord::Schema.define(version: 2019_12_01_214850) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applied_templates", force: :cascade do |t|
    t.text "markup"
    t.jsonb "skeleton"
    t.bigint "template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["template_id"], name: "index_applied_templates_on_template_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "user_uuid"
    t.jsonb "body"
    t.string "type"
    t.bigint "applied_template_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applied_template_id"], name: "index_notifications_on_applied_template_id"
  end

  create_table "templates", force: :cascade do |t|
    t.text "markup"
    t.jsonb "skeleton"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
