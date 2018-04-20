class CreateQuizCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_candidates do |t|

      t.integer :quizz_id, null: false
      t.integer :candidate_id, null: false
      t.decimal :marks_obtained
      #add more columns here..

      t.timestamps
    end

    add_index :quiz_candidates, [:quizz_id]
    add_index :quiz_candidates, [:candidate_id]
  end
end
