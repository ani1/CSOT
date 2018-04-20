class CreateQuizQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_questions do |t|

      t.integer :quizz_id, null: false
      t.integer :question_id, null: false
      t.decimal :max_marks

      t.timestamps
    end

    add_index :quiz_questions, [:quizz_id]
    add_index :quiz_questions, [:question_id]

  end
end
