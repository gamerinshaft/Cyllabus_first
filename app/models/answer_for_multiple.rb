class AnswerForMultiple < ActiveRecord::Base
	belongs_to :multiple_choice_question

  validates :multiple_choice_question, presence: true
end
