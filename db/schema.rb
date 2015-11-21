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

ActiveRecord::Schema.define(version: 20151120233154) do

  create_table "activities", force: :cascade do |t|
    t.text     "description"
    t.string   "activity_type"
    t.text     "location"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "spots"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "doctor_profile_id"
  end

  add_index "activities", ["doctor_profile_id"], name: "index_activities_on_doctor_profile_id"

  create_table "activity_users", force: :cascade do |t|
    t.integer  "activity_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "activity_users", ["activity_id"], name: "index_activity_users_on_activity_id"
  add_index "activity_users", ["user_id"], name: "index_activity_users_on_user_id"

  create_table "doctor_profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.string   "specialty"
    t.string   "hospital"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "doctor_profiles", ["user_id"], name: "index_doctor_profiles_on_user_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "doctors", ["name", "resource_type", "resource_id"], name: "index_doctors_on_name_and_resource_type_and_resource_id"
  add_index "doctors", ["name"], name: "index_doctors_on_name"

  create_table "student_profiles", force: :cascade do |t|
    t.string   "name"
    t.integer  "year"
    t.string   "clinical_school"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["name", "resource_type", "resource_id"], name: "index_students_on_name_and_resource_type_and_resource_id"
  add_index "students", ["name"], name: "index_students_on_name"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_doctors", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "doctor_id"
  end

  add_index "users_doctors", ["user_id", "doctor_id"], name: "index_users_doctors_on_user_id_and_doctor_id"

  create_table "users_students", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "student_id"
  end

  add_index "users_students", ["user_id", "student_id"], name: "index_users_students_on_user_id_and_student_id"

end
