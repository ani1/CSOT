class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|

      t.integer :question_id, null: false
      t.text :body
      t.boolean :correct, default: false
      t.timestamps
    end

    add_index :options, [:question_id], name: :i_options_question_id
  end
end
