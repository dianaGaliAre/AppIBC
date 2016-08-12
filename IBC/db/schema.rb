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

ActiveRecord::Schema.define(version: 20160714044355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre_a"
    t.string   "app"
    t.string   "apm"
    t.string   "direccion"
    t.date     "fecha_nac"
    t.string   "telefono"
    t.string   "email"
    t.integer  "curso_id"
    t.integer  "horario_id"
    t.integer  "tipopago_id"
    t.integer  "instructor_id"
    t.integer  "dium_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "alumnos", ["curso_id"], name: "index_alumnos_on_curso_id", using: :btree
  add_index "alumnos", ["dium_id"], name: "index_alumnos_on_dium_id", using: :btree
  add_index "alumnos", ["horario_id"], name: "index_alumnos_on_horario_id", using: :btree
  add_index "alumnos", ["instructor_id"], name: "index_alumnos_on_instructor_id", using: :btree
  add_index "alumnos", ["tipopago_id"], name: "index_alumnos_on_tipopago_id", using: :btree

  create_table "asistencia", force: :cascade do |t|
    t.boolean  "asistencia"
    t.boolean  "falta"
    t.boolean  "retardo"
    t.date     "fecha"
    t.integer  "alumno_id"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "asistencia", ["alumno_id"], name: "index_asistencia_on_alumno_id", using: :btree
  add_index "asistencia", ["instructor_id"], name: "index_asistencia_on_instructor_id", using: :btree

  create_table "calificacions", force: :cascade do |t|
    t.float    "calificacion"
    t.integer  "alumno_id"
    t.integer  "materium_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "calificacions", ["alumno_id"], name: "index_calificacions_on_alumno_id", using: :btree
  add_index "calificacions", ["materium_id"], name: "index_calificacions_on_materium_id", using: :btree

  create_table "cat_estatuses", force: :cascade do |t|
    t.string   "estatus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuota", force: :cascade do |t|
    t.float    "cantidad"
    t.date     "fecha_pago"
    t.integer  "alumno_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cuota", ["alumno_id"], name: "index_cuota_on_alumno_id", using: :btree

  create_table "cursos", force: :cascade do |t|
    t.string   "nombre_curso"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "dia", force: :cascade do |t|
    t.string   "dia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horarios", force: :cascade do |t|
    t.string   "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "ap"
    t.string   "am"
    t.string   "tel"
    t.string   "dir"
    t.string   "dia"
    t.string   "horario"
    t.string   "mail"
    t.boolean  "status"
    t.integer  "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "instructors", ["curso_id"], name: "index_instructors_on_curso_id", using: :btree

  create_table "materia", force: :cascade do |t|
    t.string   "nombre_materia"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "tipopagos", force: :cascade do |t|
    t.string   "nombre_tp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombre"
    t.string   "password_digest"
    t.integer  "instructor_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["instructor_id"], name: "index_users_on_instructor_id", using: :btree

  add_foreign_key "alumnos", "cursos"
  add_foreign_key "alumnos", "dia"
  add_foreign_key "alumnos", "horarios"
  add_foreign_key "alumnos", "instructors"
  add_foreign_key "alumnos", "tipopagos"
  add_foreign_key "asistencia", "alumnos"
  add_foreign_key "asistencia", "instructors"
  add_foreign_key "calificacions", "alumnos"
  add_foreign_key "calificacions", "materia"
  add_foreign_key "cuota", "alumnos"
  add_foreign_key "instructors", "cursos"
  add_foreign_key "users", "instructors"
end
