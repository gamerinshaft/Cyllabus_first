class CreateMultipleChoiceQuestions < ActiveRecord::Migration
  def change
    create_table :multiple_choice_questions do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
