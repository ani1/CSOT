class CreateQuizzs < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzs do |t|

      t.string :name
      t.string :job_title
      t.integer :time_limit
      t.text :introduction
      t.text :instruction

      t.references :taggable, polymorphic: true, index: true

      t.timestamps
    end
  end
end
