class CreateAnswerForMultiples < ActiveRecord::Migration
  def change
    create_table :answer_for_multiples do |t|
      t.boolean :check
      t.text :content
      t.string :multiple_choice_question_id
      t.string :company_id
      t.timestamps
    end
  end
end
