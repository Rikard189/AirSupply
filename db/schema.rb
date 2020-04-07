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

ActiveRecord::Schema.define(version: 20200407021338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "outdoor_number"
    t.string "interior_number"
    t.string "town"
    t.string "cp"
    t.bigint "worker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["worker_id"], name: "index_addresses_on_worker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workers", force: :cascade do |t|
    t.string "nombre_completo"
    t.string "nss"
    t.string "rfc"
    t.string "curp"
    t.string "tel"
    t.string "cel"
    t.date "fecha_nacimiento"
    t.date "fecha_ingreso"
    t.float "sdi"
    t.float "sd"
    t.string "sex"
    t.string "job"
    t.string "status", default: "Alta"
    t.string "marital_status"
    t.string "work_contract"
    t.string "imss_format"
    t.string "banorte_contract"
    t.string "imss_discharge_notice"
    t.string "infonavit_retention_notice"
    t.string "employee_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.json "identification"
    t.string "proof_address"
  end

  add_foreign_key "addresses", "workers"
end
