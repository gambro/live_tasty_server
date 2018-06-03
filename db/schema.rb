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

ActiveRecord::Schema.define(version: 20180603173036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dish_details", force: :cascade do |t|
    t.bigint "dish_id"
    t.bigint "ingredient_id"
    t.string "unit", default: "шт", null: false
    t.float "amount", default: 1.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_dish_details_on_dish_id"
    t.index ["ingredient_id"], name: "index_dish_details_on_ingredient_id"
  end

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "country_id"
    t.string "dishable_type"
    t.bigint "dishable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_dishes_on_country_id"
    t.index ["dishable_type", "dishable_id"], name: "index_dishes_on_dishable_type_and_dishable_id"
  end

  create_table "dishes_labels", id: false, force: :cascade do |t|
    t.bigint "dish_id", null: false
    t.bigint "label_id", null: false
    t.index ["label_id", "dish_id"], name: "index_dishes_labels_on_label_id_and_dish_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "alt", default: "", null: false
    t.string "file"
    t.string "imagable_type"
    t.bigint "imagable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imagable_type", "imagable_id"], name: "index_images_on_imagable_type_and_imagable_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meta", force: :cascade do |t|
    t.string "title", default: "", null: false
    t.string "description", default: "", null: false
    t.text "keywords", default: "", null: false
    t.string "alias", default: "", null: false
    t.string "metables_type"
    t.bigint "metables_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["metables_type", "metables_id"], name: "index_meta_on_metables_type_and_metables_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  add_foreign_key "sub_categories", "categories"
end
