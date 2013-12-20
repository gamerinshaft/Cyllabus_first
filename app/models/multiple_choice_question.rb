class MultipleChoiceQuestion < ActiveRecord::Base
	belongs_to :company
	has_many :answer_for_multiples

  validates :company, presence: true
end
