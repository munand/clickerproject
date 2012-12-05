class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_text
      t.string :question_type
      t.integer :correct_answer
      t.string :answer_a
      t.string :answer_b
      t.string :answer_c
      t.string :answer_d

      t.timestamps
    end
  end
end
