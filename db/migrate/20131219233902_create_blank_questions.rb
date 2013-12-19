class CreateBlankQuestions < ActiveRecord::Migration
  def change
    create_table :blank_questions do |t|
      t.string :title
      t.text :content
      t.string :company_id

      t.timestamps
    end
  end
end
