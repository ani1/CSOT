class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|

      t.integer :quiz_question_id, null: false
      t.integer :quiz_candidate_id, null: false
      t.text :body
      t.decimal :marks_obtained

      t.timestamps
    end

    add_index :answers, [:quiz_question_id]
    add_index :answers, [:quiz_candidate_id]

  end
end
