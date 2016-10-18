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

ActiveRecord::Schema.define(version: 20161018142832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "link"
    t.datetime "pub_date"
    t.text     "description"
    t.integer  "wp_post_id"
    t.datetime "posted_at"
    t.string   "observer"
    t.string   "lastname"
    t.string   "firstname"
    t.string   "email"
    t.string   "phone"
    t.string   "qualification"
    t.string   "date"
    t.string   "time"
    t.string   "range"
    t.string   "mountain"
    t.string   "location"
    t.string   "elevation"
    t.string   "temp"
    t.string   "sky"
    t.string   "speed"
    t.string   "direction"
    t.string   "precipitation_type"
    t.string   "precipitation_rate"
    t.string   "avalanches"
    t.string   "avalanche_outbreak"
    t.string   "snowpack"
    t.string   "spin"
    t.string   "comments"
    t.string   "photos"
    t.string   "videos"
    t.string   "priority_1"
    t.string   "priority_2"
    t.string   "priority_3"
    t.string   "priority_4"
    t.string   "avalanche_problem_1"
    t.string   "avalanche_problem_2"
    t.string   "avalanche_problem_3"
    t.string   "avalanche_problem_4"
    t.string   "is_avalanche_observed_1"
    t.string   "is_avalanche_observed_2"
    t.string   "is_avalanche_observed_3"
    t.string   "is_avalanche_observed_4"
    t.string   "check_weak_layer_1"
    t.string   "check_weak_layer_2"
    t.string   "check_weak_layer_3"
    t.string   "check_weak_layer_4"
    t.string   "potential_size_1"
    t.string   "potential_size_2"
    t.string   "potential_size_3"
    t.string   "potential_size_4"
    t.string   "likelihood_of_triggering_1"
    t.string   "likelihood_of_triggering_2"
    t.string   "likelihood_of_triggering_3"
    t.string   "likelihood_of_triggering_4"
    t.string   "sensitivity_to_triggers_1"
    t.string   "sensitivity_to_triggers_2"
    t.string   "sensitivity_to_triggers_3"
    t.string   "sensitivity_to_triggers_4"
    t.string   "spatial_distribution_1"
    t.string   "spatial_distribution_2"
    t.string   "spatial_distribution_3"
    t.string   "spatial_distribution_4"
    t.string   "terrain_features_1"
    t.string   "terrain_features_2"
    t.string   "terrain_features_3"
    t.string   "terrain_features_4"
    t.string   "memo_1"
    t.string   "memo_2"
    t.string   "memo_3"
    t.string   "memo_4"
    t.string   "alpine_danger"
    t.string   "treeline_danger"
    t.string   "below_treeline_danger"
    t.string   "danger_comments"
    t.string   "confidence"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "category"
    t.integer  "area_id"
    t.integer  "elevation_low"
    t.integer  "elevation_high"
    t.index ["area_id"], name: "index_observations_on_area_id", using: :btree
    t.index ["user_id"], name: "index_observations_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "role"
    t.string   "wp_author_id"
    t.string   "wp_author_login"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
