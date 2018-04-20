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

ActiveRecord::Schema.define(version: 20180227051250) do

  create_table "answers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "quiz_question_id",                               null: false
    t.integer  "quiz_candidate_id",                              null: false
    t.text     "body",              limit: 65535
    t.decimal  "marks_obtained",                  precision: 10
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.index ["quiz_candidate_id"], name: "index_answers_on_quiz_candidate_id", using: :btree
    t.index ["quiz_question_id"], name: "index_answers_on_quiz_question_id", using: :btree
  end

  create_table "candidates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.decimal  "experience", precision: 10
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "options", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "question_id",                               null: false
    t.text     "body",        limit: 65535
    t.boolean  "correct",                   default: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.index ["question_id"], name: "i_options_question_id", using: :btree
  end

  create_table "questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "body",          limit: 65535
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["taggable_type", "taggable_id"], name: "index_questions_on_taggable_type_and_taggable_id", using: :btree
  end

  create_table "quiz_candidates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "quizz_id",                      null: false
    t.integer  "candidate_id",                  null: false
    t.decimal  "marks_obtained", precision: 10
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["candidate_id"], name: "index_quiz_candidates_on_candidate_id", using: :btree
    t.index ["quizz_id"], name: "index_quiz_candidates_on_quizz_id", using: :btree
  end

  create_table "quiz_questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "quizz_id",                   null: false
    t.integer  "question_id",                null: false
    t.decimal  "max_marks",   precision: 10
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["question_id"], name: "index_quiz_questions_on_question_id", using: :btree
    t.index ["quizz_id"], name: "index_quiz_questions_on_quizz_id", using: :btree
  end

  create_table "quizzs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "job_title"
    t.integer  "time_limit"
    t.text     "introduction",  limit: 65535
    t.text     "instruction",   limit: 65535
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["taggable_type", "taggable_id"], name: "index_quizzs_on_taggable_type_and_taggable_id", using: :btree
  end

  create_table "taggings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id", using: :btree
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
