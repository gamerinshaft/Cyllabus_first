class CreateMultipleChoiceQuestions < ActiveRecord::Migration
  def change
    create_table :multiple_choice_questions do |t|
      t.string :title
      t.text :content
      t.string :company_id
      t.timestamps
    end
  end
end
