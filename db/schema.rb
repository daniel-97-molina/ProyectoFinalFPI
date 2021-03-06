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

ActiveRecord::Schema.define(version: 20171127034747) do

  create_table "empleados", force: :cascade do |t|
    t.string "codigo"
    t.string "nombre"
    t.integer "sucursal_id"
    t.string "contrasena"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sucursal_id"], name: "index_empleados_on_sucursal_id"
  end

  create_table "miembros", force: :cascade do |t|
    t.string "nombre"
    t.boolean "masculino"
    t.boolean "activo"
    t.integer "sucursal_id"
    t.date "fechaingreso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sucursal_id"], name: "index_miembros_on_sucursal_id"
  end

  create_table "pagos", force: :cascade do |t|
    t.date "fecha"
    t.integer "miembro_id"
    t.integer "empleado_id"
    t.integer "tipopago_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empleado_id"], name: "index_pagos_on_empleado_id"
    t.index ["miembro_id"], name: "index_pagos_on_miembro_id"
    t.index ["tipopago_id"], name: "index_pagos_on_tipopago_id"
  end

  create_table "sucursals", force: :cascade do |t|
    t.string "ubicacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipopagos", force: :cascade do |t|
    t.string "nombre"
    t.decimal "monto", precision: 5, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
