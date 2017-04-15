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

ActiveRecord::Schema.define(version: 20170412203635) do

  create_table "adresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "endereco",    limit: 45
    t.string  "numero",      limit: 10
    t.string  "complemento", limit: 60
    t.string  "bairro",      limit: 45
    t.string  "cep",         limit: 8
    t.integer "city_id"
    t.integer "person_id"
    t.index ["city_id"], name: "index_adresses_on_city_id", using: :btree
    t.index ["person_id"], name: "index_adresses_on_person_id", using: :btree
  end

  create_table "athletes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "matricula",          limit: 45
    t.datetime "vencimento"
    t.string   "situacao",           limit: 45
    t.integer  "physical_person_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["physical_person_id"], name: "index_students_on_physical_person_id", using: :btree
  end

  create_table "cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "nome",     limit: 45
    t.integer "state_id"
    t.index ["state_id"], name: "index_cities_on_state_id", using: :btree
  end

  create_table "class_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome",       limit: 45
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "classes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "schedule_id"
    t.integer  "athletes_id"
    t.integer  "class_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["athletes_id"], name: "index_classes_on_student_id", using: :btree
    t.index ["class_type_id"], name: "index_classes_on_class_type_id", using: :btree
    t.index ["schedule_id"], name: "index_classes_on_schedule_id", using: :btree
  end

  create_table "payments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "tipopagamento", limit: 45
    t.string   "valor",         limit: 8
    t.string   "pagamentocol",  limit: 45
    t.integer  "athletes_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["athletes_id"], name: "index_payments_on_student_id", using: :btree
  end

  create_table "people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome",       limit: 45
    t.boolean  "tipopessoa"
    t.string   "telfixo",    limit: 12
    t.string   "telcelular", limit: 12
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "physical_people", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "cpf",          limit: 11
    t.string   "sexo",         limit: 45
    t.date     "dtnascimento"
    t.integer  "person_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["person_id"], name: "index_physical_people_on_person_id", using: :btree
  end

  create_table "plans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "valor",        limit: 8
    t.string   "desconto",     limit: 8
    t.integer  "qtdiassemana"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "profilename", limit: 45
    t.string   "profiledesc", limit: 45
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "date"
    t.integer  "qtvagas"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_schedules_on_teacher_id", using: :btree
  end

  create_table "states", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nome", limit: 45
  end

  create_table "teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "cref",               limit: 45
    t.string   "valorhora",          limit: 7
    t.integer  "physical_person_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["physical_person_id"], name: "index_teachers_on_physical_person_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "athletes", "physical_people"
  add_foreign_key "classes", "class_types"
  add_foreign_key "payments", "athletes", column: "athletes_id"
  add_foreign_key "physical_people", "people"
  add_foreign_key "profiles", "users"
  add_foreign_key "schedules", "teachers"
  add_foreign_key "teachers", "physical_people"
end
