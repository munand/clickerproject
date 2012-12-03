class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question_text
      t.string :question_type
      t.integer :correct_answer

      t.timestamps
    end
  end
end
