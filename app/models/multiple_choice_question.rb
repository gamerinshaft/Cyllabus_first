class MultipleChoiceQuestion < ActiveRecord::Base
	belongs_to :company
	has_many :answr_for_maltiples
end
