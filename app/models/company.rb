class Company < ActiveRecord::Base
	has_many :blank_questions
	has_many :multiple_choice_questions
	mount_uploader :logo, LogoUploader
	mount_uploader :cover, CoverUploader
	geocoded_by :address
	after_validation :geocode
end
