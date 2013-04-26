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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130426184644) do

  create_table "tafs", :force => true do |t|
    t.integer  "te_id"
    t.integer  "tc_id"
    t.integer  "top_id"
    t.integer  "tts_id"
    t.datetime "ta01_horario_inicio_consulta"
    t.datetime "ta02_horario_fim_consulta"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "tes", :force => true do |t|
    t.integer  "tprof_profissional_id"
    t.integer  "tprof_responsavel_id"
    t.integer  "tta_id"
    t.integer  "top_id"
    t.integer  "ttac_id"
    t.integer  "te01_num_seq"
    t.date     "te03_data_execucao"
    t.datetime "te04_horario_inicio_execucao"
    t.datetime "te05_horario_fim_execucao"
    t.string   "te06_observacoes"
    t.integer  "te07_num_atendimentos"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

end
