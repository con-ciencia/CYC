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

ActiveRecord::Schema.define(version: 20200709114500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: :cascade do |t|
    t.string "nombre"
    t.string "tamaño"
    t.string "tipo"
    t.string "rubro"
    t.string "web"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_empresas_on_user_id"
  end

  create_table "favorite_subsidios", force: :cascade do |t|
    t.bigint "subsidio_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subsidio_id"], name: "index_favorite_subsidios_on_subsidio_id"
    t.index ["user_id"], name: "index_favorite_subsidios_on_user_id"
  end

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre"
    t.string "etapa"
    t.text "descripcion"
    t.string "proposito"
    t.string "web"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_proyectos_on_user_id"
  end

  create_table "subsidios", force: :cascade do |t|
    t.string "nombre"
    t.string "institucion"
    t.text "descripcion"
    t.string "modalidad"
    t.datetime "inicio"
    t.datetime "cierre"
    t.integer "monto"
    t.text "perfil"
    t.string "bases"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "provider"
    t.string "telefono"
    t.string "comuna"
    t.string "uid"
    t.string "remember_token"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "empresas", "users"
  add_foreign_key "favorite_subsidios", "subsidios"
  add_foreign_key "favorite_subsidios", "users"
  add_foreign_key "proyectos", "users"
end
