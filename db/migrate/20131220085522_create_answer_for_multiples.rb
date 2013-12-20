class CreateAnswerForMultiples < ActiveRecord::Migration
  def change
    create_table :answer_for_multiples do |t|
      t.boolean :check
      t.text :content

      t.timestamps
    end
  end
end
